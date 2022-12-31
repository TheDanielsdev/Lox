import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lox/components/button_comp.dart';
import 'package:lox/screens/location.dart';
import 'package:lox/screens/signup.dart';

import '../components/txtFormField.dart';
import '../constants/appcolor.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Log In',
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SignUp()));
              },
              child: Text(
                'Sign Up',
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColor.Main_Color),
              ),
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            TextFormFieldComponent(
                hintText: 'Email',
                hintTextcolor: AppColor.Hint_TxtColor,
                suffixIcon: const Text('')),
            const SizedBox(
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
            const SizedBox(
              height: 32,
            ),
            const Spacer(),
            ButtonComponent(
                color: AppColor.Main_Color,
                name: 'Log In',
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Location()));
                }),
            const SizedBox(
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
