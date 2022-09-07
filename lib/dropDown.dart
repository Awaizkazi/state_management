import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  // Initial Selected value
  String dropDownValue = 'Item 1';
  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: DropdownButton(
              // Initial Value
              value: dropDownValue,
              // Drop Down Arrow Icon
              icon: Icon(Icons.arrow_drop_down),
              // Array list of Items
              items: items.map((String items) {
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
        ],
      ),
    );
  }
}
