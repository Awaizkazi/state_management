import 'package:flutter/material.dart';

class LoginUpOnly2 extends StatefulWidget {
  const LoginUpOnly2({super.key});

  @override
  State<LoginUpOnly2> createState() => _LoginUpOnly2State();
}

class _LoginUpOnly2State extends State<LoginUpOnly2> {
  bool isChecked = false;
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
                    padding: const EdgeInsets.only(top: 130),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Sign in as',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w800),
                          ),
                        ),
                        // To add a DropDown here
                        // DropdownButton(items: , onChanged: onChanged)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 170),
                  child: Text(
                    'Sign in to your account',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 210,
                  ),
                  child: Text(
                    'User ID',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250, left: 17, right: 17),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text('Enter your User ID'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 320,
                  ),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 355, left: 17, right: 17),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text('Enter your Password'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 410),
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
                    top: 480,
                  ),
                  child: Text(
                    'Forgot user ID or Password ?',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Sign In'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
