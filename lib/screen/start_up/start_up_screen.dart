import 'package:flutter/material.dart';

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
            SizedBox(height: 80),
            Center(
              child: Column(
                children: [
                  Text("We are what we do"),
                  Text(
                    'Thousand of people are usign silent moon for smalls meditation',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
