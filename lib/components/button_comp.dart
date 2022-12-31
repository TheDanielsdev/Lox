import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lox/constants/appcolor.dart';

class ButtonComponent extends StatelessWidget {
  String name;
  Color color;
  VoidCallback onPressed;
  ButtonComponent(
      {super.key,
      required this.color,
      required this.name,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 51,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: color),
        child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Center(
            child: Text(
              name,
              style: GoogleFonts.inter(
                color: AppColor.White_Color,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
