import 'package:flutter/material.dart';
import 'package:state_management/main.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 3, // the length
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: FlutterLogo(size: 56.0),
                      title: Text('Item 1'),
                      subtitle: Text('Item 1 subtitle'),
                      trailing: Icon(Icons.access_alarm),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
