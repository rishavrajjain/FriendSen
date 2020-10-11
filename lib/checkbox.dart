import 'package:flutter/material.dart';

class YourHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<YourHomePage> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Learning'),
        ),
        body: SingleChildScrollView(
                  child: Container(
              padding: EdgeInsets.all(22.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Check the words learned today',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  CheckboxListTile(
                    title: const Text(
                      'the',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    value: this.valuefirst,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuefirst = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: const Text(
                      'of',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    value: this.valuesecond,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuesecond = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: const Text(
                      'a',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    value: this.valuethird,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuethird = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: const Text(
                      'what',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    value: this.valuethird,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuethird = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: const Text(
                      'are',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    value: this.valuethird,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuethird = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: const Text(
                      'hello',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    value: this.valuethird,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuethird = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: const Text(
                      'job',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    value: this.valuethird,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuethird = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: const Text(
                      'home',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    value: this.valuethird,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuethird = value;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: const Text(
                      'a',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    value: this.valuethird,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuethird = value;
                      });
                    },
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: new InputDecoration(
      hintText: "Enter your feedback",
      labelText: "Enter your feeback",
      labelStyle:  TextStyle(
          color:Colors.white
      )
  ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: new InputDecoration(
      hintText: "Learn next",
      labelText: "Learn next",
      labelStyle:  TextStyle(
          color:Colors.white
      )
  ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
