// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lox/components/button_comp.dart';
import 'package:lox/screens/saved_places.dart';

import '../constants/appcolor.dart';

class SelectPayment extends StatelessWidget {
  const SelectPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(0, 0),
            ),
          ),
          Positioned(
              left: 16,
              top: 20,
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('assets/arrow.png'))),
          DraggableScrollableSheet(
            initialChildSize: 0.4,
            maxChildSize: 0.9,
            minChildSize: 0.2,
            builder: (context, scrollController) {
              return Container(
                color: AppColor.White_Color,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Payment Options',
                            style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.Main_Color),
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColor.Grey_Color2,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/Vector.png',
                          width: 20,
                        ),
                        title: Text(
                          'Visa ****1111',
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.Main_Color),
                        ),
                        trailing: Image.asset(
                          'assets/mark.png',
                          width: 20,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                        color: AppColor.Grey_Color2,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'assets/Vector.png',
                          width: 20,
                        ),
                        title: Text(
                          'Wallet',
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.Main_Color),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                        color: AppColor.Grey_Color2,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => SavedPlaces(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(),
                            height: 51,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: AppColor.White_Color,
                                border: Border.all(color: AppColor.Main_Color)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Center(
                                child: Text(
                                  '+ Add new card ',
                                  style: GoogleFonts.inter(
                                    color: AppColor.Main_Color,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
