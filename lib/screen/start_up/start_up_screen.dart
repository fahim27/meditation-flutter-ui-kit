import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation/common_widget/button/round_button.dart';
import 'package:meditation/config/my_color.dart';
import 'package:meditation/screen/login/login_screen.dart';

class StartUp extends StatefulWidget {
  const StartUp({super.key});

  @override
  State<StartUp> createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/img/starup_top.png',
                  width: double.infinity,
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                children: [
                  Text(
                    "We are what we do",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: MyColor.primaryText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Thousand of people are using silent moon for smalls meditation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: MyColor.secondaryText,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RoundButton(title: 'SIGN UP', onPressed: () {}),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ALREADY HAVE AN ACCOUNT?',
                  style: TextStyle(fontSize: 14, color: MyColor.secondaryText),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  // padding: EdgeInsetsGeometry.only(left: 10),
                  child: Text(
                    'LOG IN',
                    style: TextStyle(color: MyColor.primary, fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
