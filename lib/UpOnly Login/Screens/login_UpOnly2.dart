import 'package:flutter/material.dart';

class LoginUpOnly2 extends StatefulWidget {
  const LoginUpOnly2({super.key});

  @override
  State<LoginUpOnly2> createState() => _LoginUpOnly2State();
}

class _LoginUpOnly2State extends State<LoginUpOnly2> {
  bool isChecked = false;
  List<String> emp = ['Employee', 'Client', 'Manager'];
  String dropDownValue = 'Employee';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/bgImage.jpeg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Container(
                  child: Image.asset(
                    'assets/UpOnly_logo.jpeg',
                    width: MediaQuery.of(context).size.width,
                    height: 170,
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 145),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Sign in as',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      // To add a DropDown here
                      // DropdownButton(items: , onChanged: onChanged)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 140,
                  left: 170,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 1, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  // dropdown below..
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: DropdownButton<String>(
                      value: dropDownValue,
                      onChanged: (String? Value) =>
                          setState(() => dropDownValue = Value!),
                      items: emp
                          .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          )
                          .toList(),
                      // add extra sugar..😊😀
                      icon: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 2, bottom: 2, right: 3),
                          child: Container(
                            height: 25,
                            width: 27,
                            color: Colors.grey.shade600,
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      // iconSize: 30,
                      dropdownColor: Color(0xff1E294E),
                      underline: SizedBox(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 210),
                child: Text(
                  'Sign in to your account',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 250,
                ),
                child: Text(
                  'User ID',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 280, left: 17, right: 17),
                child: SizedBox(
                  height: 45,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('Enter your User ID'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 340,
                ),
                child: Text(
                  'Password',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 374, left: 17, right: 17),
                child: SizedBox(
                  height: 45,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('Enter your Password'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 430),
                child: CheckboxListTile(
                    value: isChecked,
                    title: Text('Remember me'),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 90,
                  top: 490,
                ),
                child: Text(
                  'Forgot user ID or Password ?',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff1E294E),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 540, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyle(fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(40, 40),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In with OTP',
                        style: TextStyle(fontSize: 15),
                      ),
                      // style: ElevatedButton.styleFrom(minimumSize: Size(40, 40)),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
