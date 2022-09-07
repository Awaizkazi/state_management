import 'package:flutter/material.dart';

class LoginScreenUpOnly extends StatefulWidget {
  const LoginScreenUpOnly({super.key});

  @override
  State<LoginScreenUpOnly> createState() => _LoginScreenUpOnlyState();
}

class _LoginScreenUpOnlyState extends State<LoginScreenUpOnly> {
  List<String> emp = ['Employee', 'Client', 'Partner'];
  String defaultValue = 'Employee';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    'assets/logo2.png',
                    width: 200,
                    height: 400,
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
                      child: DropdownButton<String>(
                        // dropdownColor: Colors.purple[200],
                        elevation: 4,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                        items:
                            emp.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            // Inside List Value which i have menttioned Above as emp ['Employee','Client','Partner']
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.blue),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            defaultValue = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
