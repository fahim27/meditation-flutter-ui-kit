import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CirleButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color forGroundColor;
  const CirleButton({
    Key? key,
    required this.title,
    required this.backgroundColor,
    required this.forGroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {},
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Color(0xffA1A4B2), width: 1),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: forGroundColor, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
