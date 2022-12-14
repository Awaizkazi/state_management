import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(231, 29, 42, 85),
        centerTitle: true,
        title: Text(
          'Information',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 500,
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff1E294E),
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'About the App!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 60, 4),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25, left: 20),
                  child: Text(
                    'We are not boasting, we are the first app in the\n market which is a boon to our employees and \nyou our customer. We at UPONLY Technologies \nbelieves in evolving constantly.We provide\nplatform , reports, Al based Saas product and\nautomation for B2B & B2C businesses.This App\nis devised by our techno-financial experts\nbased in mumbai and aim to create the\n simplest solutions for the most difficult but\nstrive to better in helping our customers save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 500,
            height: 247,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'About the name!',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff1E294E),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 80),
                  child: Text(
                    'We called the company and the App UPONLY\nas it is combination of two words ,UP and ONLY\nas we constantly work trielessly to ensure we\nare always UP,ONLY in all conditions',
                    style: TextStyle(
                      fontSize: 18.4,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 89, 24, 100),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
