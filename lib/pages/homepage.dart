import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic> masterlist;

  void _addperson() {
    setState(() {
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
          home: new Scaffold(
        appBar: new AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: new Text(widget.title),
        ),
        body: new Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: new ListView.builder (
            itemBuilder: (buildcontext, index) {
              itemcount: masterlist.length;
              return ListTile (
                leading: CircleAvatar(),
                title: Text("$masterlist[firstName[index]"),
              );
            },

          )
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, 'AddPersonPage'),
          tooltip: 'Add Person',
          child: new Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}