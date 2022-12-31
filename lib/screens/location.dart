// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lox/components/button_comp.dart';
import 'package:lox/components/txtFormField.dart';
import 'package:lox/constants/appcolor.dart';
import 'package:lox/screens/select_ride.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 28,
                      ),
                      Image.asset('assets/bar1.png'),
                      SizedBox(
                        height: 4,
                      ),
                      RotatedBox(
                          quarterTurns: 1,
                          child: Container(
                              width: 42,
                              height: 1,
                              color: AppColor.Main_Color)),
                      SizedBox(
                        height: 4,
                      ),
                      Image.asset('assets/bar2.png'),
                    ],
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 7,
                        ),
                        TextFormFieldComponent(
                            hintText: 'Current location',
                            hintTextcolor: AppColor.Main_Color,
                            suffixIcon: Text('')),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormFieldComponent(
                            hintText: 'How many bags of rice do you need?',
                            hintTextcolor: AppColor.Hint_TxtColor,
                            suffixIcon: Text(''))
                      ],
                    ),
                  ),
                  Image.asset('assets/plus.png'),
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Expanded(
              child: Stack(children: [
                GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(0, 0),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: AppColor.White_Color,
                    height: 77,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                    child: ButtonComponent(
                        color: AppColor.Main_Color,
                        name: 'Done',
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => SelectRide()));
                        }),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
