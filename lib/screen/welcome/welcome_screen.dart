import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation/common_widget/button/common_button.dart';
import 'package:meditation/common_widget/button/round_button.dart';
import 'package:meditation/config/my_color.dart';
import 'package:meditation/screen/start_up/start_up_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: Image.asset("assets/img/logo_17.png"),
              ),
              SizedBox(height: 75),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hi Afsar, Welcome",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xffFFECCC),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "to Silent Moon",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        "Explore the app, Find some peace of mind to prepare for meditation.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffEBEAEC),
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                        ),
                      ),
                    ),
                    // SizedBox(height: 70),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset('assets/img/welcome.png'),
                        // const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                            bottom: 100,
                          ),
                          child: CommonButton(
                            title: "GET STARTED",
                            bgColor: Color(0xffEBEAEC),
                            textColor: Color(0xff3F414E),
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => StartUp(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
