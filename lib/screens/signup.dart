// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lox/components/button_comp.dart';
import 'package:lox/components/txtFormField.dart';
import 'package:lox/screens/login.dart';

import '../constants/appcolor.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            size: 16,
            color: AppColor.Grey_Color,
          ),
        ),
        title: Text(
          'Sign Up',
          style: GoogleFonts.inter(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: AppColor.Black_Color),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Login()));
              },
              child: Text(
                'Login',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColor.Main_Color),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            TextFormFieldComponent(
                hintText: 'Name',
                hintTextcolor: AppColor.Hint_TxtColor,
                suffixIcon: Text('')),
            SizedBox(
              height: 16,
            ),
            TextFormFieldComponent(
                hintText: 'Email',
                hintTextcolor: AppColor.Hint_TxtColor,
                suffixIcon: Text('')),
            SizedBox(
              height: 16,
            ),
            TextFormFieldComponent(
              hintText: 'Password',
              hintTextcolor: AppColor.Hint_TxtColor,
              suffixIcon: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text('Show',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColor.Main_Color)),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Checkbox(
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.disabled)) {
                      return AppColor.Grey_Color;
                    } else {
                      return AppColor.Grey_Color;
                    }
                  }),
                  value: false,
                  onChanged: (value) {},
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                      'I would like to receive your newsletter and other promotional information.',
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.Grey_Color4)),
                )
              ],
            ),
            Spacer(),
            ButtonComponent(
                color: AppColor.Main_Color, name: 'Sign Up', onPressed: () {}),
            SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Forgot your password?',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.Main_Color),
              ),
            )
          ],
        ),
      ),
    );
  }
}
