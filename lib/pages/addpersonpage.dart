import 'package:flutter/material.dart';
import 'package:saving/person.dart';

class AddPersonPage extends StatefulWidget {

  @override
  _AddPersonPageState createState() => _AddPersonPageState();
}

class _AddPersonPageState extends State<AddPersonPage> {

final myController = new TextEditingController();
String firstName;
String lastName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextField(
            controller: myController,
            decoration: InputDecoration(hintText: 'first name'),
            onChanged: (String e) => (){
              setState(() {
                firstName = e;
              });
            },
          ),
        ],
      ),
    );
  }
}
