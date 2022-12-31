// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/txtFormField.dart';
import '../constants/appcolor.dart';

class AddPlaces extends StatelessWidget {
  const AddPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/arrow.png')),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
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
                            width: 42, height: 1, color: AppColor.Main_Color)),
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
                          hintText: 'Where to?',
                          hintTextcolor: AppColor.Hint_TxtColor,
                          suffixIcon: Text(''))
                    ],
                  ),
                ),
                Image.asset('assets/plus.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
