import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/appcolor.dart';

class TextFormFieldComponent extends StatelessWidget {
  Widget suffixIcon;
  String hintText;
  Color hintTextcolor;
  TextFormFieldComponent(
      {super.key,
      required this.hintText,
      required this.hintTextcolor,
      required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: TextFormField(
        textCapitalization: TextCapitalization.words,
        expands: false,
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: GoogleFonts.inter(
              color: hintTextcolor, fontSize: 16, fontWeight: FontWeight.w500),
          focusColor: AppColor.Main_Color,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
