import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lox/components/button_comp.dart';
import 'package:lox/constants/appcolor.dart';
import 'package:lox/screens/login.dart';
import 'package:lox/screens/signup.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/Rectangle 3.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                  decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.5)
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/rigs.png',
                          fit: BoxFit.cover,
                          width: 220,
                          height: 220,
                        ),
                      ),
                      Positioned(
                        left: 38,
                        right: 38,
                        top: 20,
                        bottom: 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'LOX',
                                style: GoogleFonts.hanaleiFill(
                                    fontSize: 59,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.Main_Color),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Test',
                                style: GoogleFonts.hanaleiFill(
                                    fontSize: 59,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.Main_Color),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    'user',
                    style: GoogleFonts.hanaleiFill(
                        fontSize: 59,
                        fontWeight: FontWeight.w400,
                        color: AppColor.Main_Color),
                  ),
                  const Spacer(),
                  ButtonComponent(
                      color: AppColor.Main_Color,
                      name: 'Get Started',
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => const SignUp()));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
