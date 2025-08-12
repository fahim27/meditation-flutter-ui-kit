import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color textColor;
  final VoidCallback onPressed;

  const CommonButton({
    super.key,
    required this.title,
    required this.bgColor,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 20),
      color: bgColor,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(38),
      ),
      child: Text(title, style: TextStyle(color: textColor)),
    );
  }
}
