import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation/common_widget/button/round_button.dart';
import 'package:meditation/common_widget/button/social_button.dart';
import 'package:meditation/common_widget/button/text_input_filed.dart';
import 'package:meditation/screen/home/chose_topic.dart';
import 'package:meditation/screen/login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset('assets/img/vector.png'),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset('assets/img/vector_1.png'),
          ),
          Positioned(
            left: 20,
            top: 70,
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: BoxBorder.all(width: 1, color: Color(0xffEBEAEC)),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                icon: Icon(Icons.arrow_back, color: Color(0xff3F414E)),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: media.height * 0.25,
            child: Image.asset('assets/img/vector_2.png'),
          ),
          Positioned(
            right: 0,
            top: media.height * 0.25,
            child: Image.asset('assets/img/vector_3.png'),
          ),
          // Main Scrollable Content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 170),
                  Center(
                    child: Text(
                      'Create your account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SocialButton(
                    backGroundColor: const Color(0xff7583CA),
                    foregroundColor: Colors.white,
                    imageName: 'facebook.png',
                    btnText: "CONTINUE WITH FACEBOOK",
                  ),
                  SizedBox(height: media.height * 0.02),
                  SocialButton(
                    backGroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    imageName: 'google.png',
                    btnText: "CONTINUE WITH GOOGLE",
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Text(
                      "OR LOG IN WITH EMAIL",
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color(0xffA1A4B2),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),

                  TextInputFiled(hintText: "Your Name"),
                  SizedBox(height: 20),
                  TextInputFiled(hintText: "Email Address"),
                  SizedBox(height: 20),
                  TextInputFiled(hintText: "Enter Password", obscureText: true),
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Text(
                        "i have reade the ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffA1A4B2),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff7583CA),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: media.height * 0.03),
                  RoundButton(
                    title: 'REGISTER',
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => ChoseTopic()),
                      );
                    },
                  ),
                  SizedBox(height: media.height * 0.1),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
