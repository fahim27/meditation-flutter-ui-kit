import 'package:flutter/material.dart';
import 'package:meditation/config/my_color.dart';

enum RoundButtonType { primary, secondary }

class RoundButton extends StatelessWidget {
  final String title;
  final RoundButtonType btnType;
  final VoidCallback onPressed;

  const RoundButton({
    super.key,
    required this.title,
    this.btnType = RoundButtonType.primary,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.maxFinite,
      color: btnType == RoundButtonType.primary
          ? MyColor.primary
          : MyColor.tertiary,
      height: 60,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: btnType == RoundButtonType.primary
              ? MyColor.primaryTextW
              : MyColor.primary,
        ),
      ),
    );
  }
}
