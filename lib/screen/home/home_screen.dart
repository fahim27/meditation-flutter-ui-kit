import 'package:flutter/material.dart';
import 'package:meditation/config/my_color.dart';
import 'package:meditation/screen/home/course_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List rArr = [
    {
      "image": "assets/img/r1.png",
      "title": "Focus",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/img/r2.png",
      "title": "Happiness",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/img/r1.png",
      "title": "Focus",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/img/r2.png",
      "title": "Happiness",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Image.asset("assets/img/logo_black.png", width: 170),
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning, Afsar",
                    style: TextStyle(
                      fontSize: 28,
                      color: Color(0xff3F414E),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "We Wish you have a good day",
                    style: TextStyle(fontSize: 20, color: Color(0xffA1A4B2)),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 210,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color(0xff8E97FD),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Image.asset(
                                  "assets/img/h1.png",
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                              SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Basics",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffFFECCC),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "COURSE",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xffF7E8D0),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "3-10 MIN",
                                    style: TextStyle(color: Color(0xffEBEAEC)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      context.push(CourseScreen());
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20,
                                      ),
                                    ),
                                    child: Text("START"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 210,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color(0xffFFDB9D),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Image.asset(
                                  "assets/img/h2.png",
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                              SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Relaxation",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3F414E),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "MUSIC",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xff524F53),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "3-10 MIN",
                                    style: TextStyle(color: Color(0xff524F53)),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      context.push(CourseScreen());
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff3F414E),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20,
                                      ),
                                    ),
                                    child: Text("START"),
                                  ),
                                ],
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: const Color(0xff333242),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/img/d1.png",
                      width: double.maxFinite,
                      fit: BoxFit.fitWidth,
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 30,
                        vertical: 25,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Daily Thought",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "MEDITATION . 3-10 MIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset(
                              "assets/img/play.png",
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),

              Text(
                "Recommended for you",
                style: TextStyle(
                  color: MyColor.primaryText,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 180,

                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 20),
                  itemCount: rArr.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext content, int index) {
                    var rObj = rArr[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(rObj["image"], width: 160, height: 110),
                        SizedBox(height: 15),
                        Text(
                          rObj['title'],
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff3F414E),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          rObj['subtitle'],
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xffA1A4B2),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
