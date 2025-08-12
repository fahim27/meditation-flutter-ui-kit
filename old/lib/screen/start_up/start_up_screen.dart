import 'package:flutter/material.dart';
import 'package:meditation/common_widget/button/round_button.dart';
import 'package:meditation/config/my_color.dart';

class StartUp extends StatefulWidget {
  const StartUp({super.key});

  @override
  State<StartUp> createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset('assets/img/start_logo.png'),
                  SizedBox(height: 80),
                  Image.asset('assets/img/start_relax.png'),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                children: [
                  Text(
                    "We are what we do",
                    style: TextStyle(
                      fontSize: 30,
                      color: MyColor.primaryText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Thousand of people are using silent moon for smalls meditation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: MyColor.secondaryText,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RoundButton(title: 'SIGN UP', onPressed: () {}),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ALREADY HAVE AN ACCOUNTyyyy?',
                  style: TextStyle(fontSize: 14, color: MyColor.secondaryText),
                ),
                TextButton(
                  onPressed: () {},
                  // padding: EdgeInsetsGeometry.only(left: 10),
                  child: Text(
                    'LOG IN',
                    style: TextStyle(color: MyColor.primary, fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
