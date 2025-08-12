import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Color backGroundColor;
  final Color foregroundColor;
  final String imageName;
  final String btnText;
  const SocialButton({
    super.key,
    required this.backGroundColor,
    required this.foregroundColor,
    required this.imageName,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backGroundColor,
        foregroundColor: foregroundColor,
        padding: EdgeInsets.symmetric(vertical: 25),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(38)),
        side: BorderSide(color: Color(0xffEBEAEC)),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 50, right: 80),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/$imageName', width: 24, height: 24),
            // SizedBox(width: 45),
            Expanded(
              child: Text(
                btnText,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
