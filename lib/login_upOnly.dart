import 'package:flutter/material.dart';

class LoginScreenUpOnly extends StatefulWidget {
  const LoginScreenUpOnly({super.key});

  @override
  State<LoginScreenUpOnly> createState() => _LoginScreenUpOnlyState();
}

class _LoginScreenUpOnlyState extends State<LoginScreenUpOnly> {
  List<String> emp = ['Employee', 'Client', 'Partner'];
  String dropDownValue = 'Employee';
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // Background Image
        image: DecorationImage(
          image: AssetImage('assets/bgImage.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/UpOnly_logo.jpeg',
                  width: 200,
                  height: 260,
                ),
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      ' Sign in as',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: DropdownButton(
                        // Initial Value
                        value: dropDownValue,
                        // Drop Down Arrow Icon
                        icon: Icon(Icons.arrow_drop_down),
                        // Array list of Items
                        items: emp.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After Selecting the desired option, it will change button value to selected value
                        onChanged: (String? value) {
                          setState(() {
                            dropDownValue = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '  Sign in to your account',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'User ID',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text('Enter your User ID'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.grey.shade200,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple)),
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text('Enter your Password'),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    fillColor: Colors.grey.shade200,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple)),
                    filled: true,
                    suffixIcon: Icon(
                      Icons.visibility_sharp,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
              CheckboxListTile(
                  activeColor: Colors.purple,
                  value: isChecked,
                  title: Text('Remember me'),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
              SizedBox(height: 20),
              Container(
                child: Text(
                  'Forgot User ID or Password?',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign In'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign in With OTP'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade800),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
