import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation/common_widget/button/round_button.dart';
import 'package:meditation/common_widget/button/social_button.dart';
import 'package:meditation/common_widget/button/text_input_filed.dart';
import 'package:meditation/screen/register/register_screen.dart';
import 'package:meditation/screen/start_up/start_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    CupertinoPageRoute(builder: (context) => StartUp()),
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
                children: [
                  SizedBox(height: 170),
                  Center(
                    child: Text(
                      'Welcome Back',
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

                  TextInputFiled(hintText: "Email Address"),
                  SizedBox(height: 20),

                  TextInputFiled(hintText: "Enter Password", obscureText: true),
                  SizedBox(height: 20),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: media.height * 0.03),
                  RoundButton(title: 'LOGIN', onPressed: () {}),
                  SizedBox(height: media.height * 0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ALREADY HAVE AN ACCOUNT?',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: const Color(0xffA1A4B2),
                        ),
                      ),
                      SizedBox(width: media.width * 0.01),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => RegisterScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: const Color(0xff8E97FD),
                          ),
                        ),
                      ),
                    ],
                  ),
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
