import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'videoClass.dart';

class VideoPlayer extends StatefulWidget {
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15, 70, 10, 0),
            child: Text("Videos",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: ListView(
                children: <Widget>[
                  VideoClass(
                    videoURL:
                        'https://www.youtube.com/watch?v=1sPmuZp7FY8',
                    title: 'Best Phone for senior citizen',
                  ),
                  SizedBox(height: 18),
                  VideoClass(
                    videoURL: 'https://www.youtube.com/watch?v=zil-HLYUT08',
                    title: 'Tips for Teaching Elderly How To Use Technology  ',
                  ),
                   SizedBox(height: 18),
                  VideoClass(
                    videoURL:
                        'https://www.youtube.com/watch?v=zv__GImbxOY',
                    title: 'What you can learn from old people',
                  ),
                  SizedBox(height: 18),
                   
                
                  
                  
                ],
              ),
            ),
          ),
          SizedBox(height: 14)
        ],
      ),
    );
  }
}
