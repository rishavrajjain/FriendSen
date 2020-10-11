//import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileMenu extends StatefulWidget {
  @override
  _ProfileMenuState createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  FocusNode nameFocusNode;
  FocusNode phoneNumberFocusNode;
  FocusNode addressFocusNode;

  TextEditingController name = TextEditingController(text: 'Initial value');
  String value;
  bool nameEnabled = false;
  bool phoneNumberEnabled = false;
  bool addressEnabled = false;

  @override
  void initState() {
    super.initState();

    nameFocusNode = FocusNode();
    phoneNumberFocusNode = FocusNode();
    addressFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    nameFocusNode.dispose();
    phoneNumberFocusNode.dispose();
    addressFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 25),
          Center(
            child: CircleAvatar(
              radius: 95,
              backgroundColor: Colors.white,
              child: Center(
                child: ClipOval(
                  child: SizedBox(
                    width: 180,
                    height: 180,
                    child: Image.asset("lib/assets/person.png"),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
                child: Text(
              'Rishav Raj Jain',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Typewriter',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 15, 8, 10),
            child: Text(
              'My Skills   >',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Typewriter',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 15, 8, 10),
            child: Text(
              'My Lessons  >',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Typewriter',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 170),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              FlatButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                color: Colors.grey[200],
                                onPressed: () {},
                                child: Text(
                                  '\$ Price',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.indigo[700]),
                                ),
                              ),
                              Text('Gardening',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                              Text('Notes',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[600])),
                              Text('Documents',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600])),
                              Text('Receipts',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600])),
                              Text('Updates ',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600])),
                              Text('Date 3/10/20',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.indigo[700]))
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 38, 8, 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 15,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 180,
                    width: 170,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTYEpYbSv4iPe3qNASTZYbnn9L5jGpteZDnqg&usqp=CAU',fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
