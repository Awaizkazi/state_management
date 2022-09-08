import 'package:flutter/material.dart';

class LoginUpOnly2 extends StatefulWidget {
  const LoginUpOnly2({super.key});

  @override
  State<LoginUpOnly2> createState() => _LoginUpOnly2State();
}

class _LoginUpOnly2State extends State<LoginUpOnly2> {
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
                        height: 230,
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 160),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
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
                    padding: EdgeInsets.only(
                      left: 40,
                      top: 210,
                    ),
                    child: Text(
                      'Sign in to your account',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 40,
                      top: 255,
                    ),
                    child: Text(
                      'User ID',
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),
                    ),
                  ),
                  TextFormField(),
                ],
              ),
            ),
          ),
        ));
  }
}
