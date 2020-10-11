import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'home2.dart';
import 'models/job.dart';

//import 'models/global.dart';

class Dhiyo extends StatefulWidget {
  @override
  _DhiyoState createState() => _DhiyoState();
}

class _DhiyoState extends State<Dhiyo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(40),
                    constraints: BoxConstraints.expand(height: 225),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Recommended Mentors',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120),
                    constraints: BoxConstraints.expand(height: 200),
                    child: ListView(
                        padding: EdgeInsets.only(left: 40),
                        scrollDirection: Axis.horizontal,
                        children: getRecentJobs()),
                  ),
                  Container(
                    height: 500,
                    margin: EdgeInsets.only(top: 250),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          color: Colors.black,
                          margin: EdgeInsets.only(top: 40, left: 20),
                          child: Text(
                            "Explore New Tasks",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: getJobCategories(),
                          ),
                        ),
                        SizedBox(height: 35)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 35)
            ],
          ),
        ),
      ),
    );
  }

  List<String> jobCategories = [
    "Spanish",
    "Bengali",
    "Arabic",
    "Hindi",
    "Malay",
    "Russian"
  ];

  Map jobCatToIcon = {
    "Spanish": Image.network(
      "https://media.istockphoto.com/vectors/concept-of-studying-english-vector-id913005798?k=6&m=913005798&s=612x612&w=0&h=HFpilTfgMblKJwx7sv7BvGgJIqDqpAJ82j3Ky-j1WB0=",
                      
      fit: BoxFit.cover,
    ),
    "Bengali": Image.network(
        'https://5.imimg.com/data5/YF/LR/MY-30132893/adwords-for-tech-support-500x500.png', fit: BoxFit.cover,),
    "Arabic": Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS73ULsB19XmzM1FleJPdJmefQxXuEE2v92aA&usqp=CAU',fit: BoxFit.cover,),
    "Russian": Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR-_PNvJb23gzEo1Un7Sp2XZoFU6Dd0EfYiUXhRtmqjiboBHErd&usqp=CAU',fit: BoxFit.cover,),
    "Malay": Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRL8XDNWteC069LwKyfvPKPYP3VCPv9T0_xaAs-0a_z9G0VbrnI&usqp=CAU'),
    "Hindi": Image.network(
        'https://thumbs.dreamstime.com/z/doctor-old-people-beautiful-young-female-looking-camera-smiling-couple-background-78610965.jpg'),
  };

  Widget getCategoryContainer(String categoryName) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10, bottom: 20),
      height: 180,
      width: 140,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Stack(children: <Widget>[
          
          ClipRRect(
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
              child: jobCatToIcon[categoryName],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(5.0),
          //   child: Center(
          //     child: Text(categoryName,
          //         style: GoogleFonts.montserrat(
          //           color: Colors.black,
          //           fontSize: 12,
          //           fontWeight: FontWeight.w500,
          //         )),
          //   ),
          // ),
        ]),
      ),
    );
  }

  List<Widget> getJobCategories() {
    List<Widget> jobCategoriesCards = [];
    List<Widget> rows = [];
    int i = 0;
    for (String category in jobCategories) {
      if (i < 2) {
        rows.add(getCategoryContainer(category));
        i++;
      } else {
        i = 0;
        jobCategoriesCards.add(Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: rows,
        ));
        rows = [];
        rows.add(getCategoryContainer(category));
        i++;
      }
    }
    if (rows.isNotEmpty) {
      jobCategoriesCards.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: rows,
      ));
    }
    return jobCategoriesCards;
  }

  Widget getJobCard(Job job) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage2()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 20, bottom: 30, top: 30),
        height: 150,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20.0,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: job.companyLogo,
                ),
                SizedBox(width: 5),
                Text(
                  job.jobTitle,
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Text(job.companyName + " - " + job.timeRequirement,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                )),
            Text(job.location),
            Text(/*makeSalaryToK(job.salary)*/ 'California',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                )),
          ],
        ),
      ),
    );
  }

  List<Widget> getRecentJobs() {
    List<Widget> recentJobCards = [];
    List<Job> jobs = findJobs();
    for (Job job in jobs) {
      recentJobCards.add(getJobCard(job));
    }
    return recentJobCards;
  }

  List<Job> findJobs() {
    List<Job> jobs = [];
    for (int i = 0; i < 10; i++) {
      jobs.add(Job("Gardening", "Vin Sharma", 20, "Beginner", "Part time",
          AssetImage("lib/assets/person.png")));
    }
    return jobs;
  }
}
