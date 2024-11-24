import 'package:flutter/material.dart';
import 'package:taxi_go_driver/Utils/colors.dart';

class RoundedButton extends StatelessWidget {
  final double width;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final void Function()? onPressed;
  const RoundedButton(
      {Key? key,
      required this.width,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: width,
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }


}
