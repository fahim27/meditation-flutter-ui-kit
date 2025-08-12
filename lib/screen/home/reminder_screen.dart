import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation/common_widget/button/common_button.dart';
import 'package:meditation/common_widget/cirle_button.dart';
import 'package:meditation/config/my_color.dart';
import 'package:meditation/screen/main_tab/main_tab_screen.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({Key? key}) : super(key: key);

  @override
  _ReminderScreenState createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 80,
              bottom: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "What time would you \nlike to meditate?",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff3F414E),
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        "Any time you can choose but We recommend first thing in th morning.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffA1A4B2),
                          height: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xffE1E1E5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CupertinoDatePicker(
                    onDateTimeChanged: (DateTime newDate) {},
                    mode: CupertinoDatePickerMode.time,
                    use24hFormat: false,
                    minuteInterval: 1,
                  ),
                ),
                SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Which day would you  \nlike to meditate?",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff3F414E),
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        "Everyday is best, but we recommend picking at least five.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffA1A4B2),
                          height: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CirleButton(
                      title: "SU",
                      forGroundColor: Color(0xffFEFFFE),
                      backgroundColor: Color(0xff3F414E),
                    ),
                    CirleButton(
                      title: "M",
                      forGroundColor: Color(0xffFEFFFE),
                      backgroundColor: Color(0xff3F414E),
                    ),
                    CirleButton(
                      title: "T",
                      forGroundColor: Color(0xffFEFFFE),
                      backgroundColor: Color(0xff3F414E),
                    ),
                    CirleButton(
                      title: "W",
                      forGroundColor: Color(0xffFEFFFE),
                      backgroundColor: Color(0xff3F414E),
                    ),
                    CirleButton(
                      title: "TH",
                      forGroundColor: Color(0xffA1A4B2),
                      backgroundColor: Color(0xffffffff),
                    ),
                    CirleButton(
                      title: "F",
                      forGroundColor: Color(0xffA1A4B2),
                      backgroundColor: Color(0xffffffff),
                    ),
                    CirleButton(
                      title: "S",
                      forGroundColor: Color(0xffFEFFFE),
                      backgroundColor: Color(0xff3F414E),
                    ),
                  ],
                ),

                SizedBox(height: 60),
                CommonButton(
                  title: 'SAVE',
                  bgColor: MyColor.primary,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => MainTabScreen()),
                    );
                  },
                ),
                SizedBox(height: 10),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'NO THANKS',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color(0xff3F414E),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
