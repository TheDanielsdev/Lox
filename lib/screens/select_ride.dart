// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lox/components/button_comp.dart';
import 'package:lox/models/items.dart';
import 'package:lox/screens/select_payment.dart';

import '../constants/appcolor.dart';

class SelectRide extends StatelessWidget {
  const SelectRide({super.key});

  @override
  Widget build(BuildContext context) {
    final itm = itmF.itemData();
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const GoogleMap(
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
              child: Image.asset('assets/arrow.png'),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.4,
            maxChildSize: 0.9,
            minChildSize: 0.2,
            builder: (context, scrollController) {
              return Container(
                color: AppColor.White_Color,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Container(
                          child: Text(
                            'Price Estimates',
                            style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.Grey_Color),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: AppColor.Grey_Color2,
                      ),
                      ListView.separated(
                          separatorBuilder: (context, index) {
                            return Divider(
                              thickness: 1,
                              color: AppColor.Grey_Color2,
                              indent: 82,
                              endIndent: 16,
                            );
                          },
                          controller: scrollController,
                          shrinkWrap: true,
                          itemCount: itm.length,
                          itemBuilder: (_, i) {
                            return ListTile(
                              title: Text(
                                itm[i].name,
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.Main_Color),
                              ),
                              subtitle: Text(
                                itm[i].price,
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.Black_Color),
                              ),
                              leading: Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: AppColor.Grey_Color,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset(
                                  itm[i].img,
                                  width: 35,
                                ),
                              ),
                              trailing: Text(
                                itm[i].metreAway,
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.Grey_Color),
                              ),
                            );
                          }),
                      Divider(
                        thickness: 1,
                        color: AppColor.Grey_Color2,
                        indent: 16,
                        endIndent: 16,
                      ),
                      Column(
                        children: [
                          ListTile(
                            leading: Image.asset('assets/Vector.png'),
                            title: Text(
                              'Cash / Credit',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.Main_Color),
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 10,
                                )),
                          ),
                          Divider(
                            thickness: 1,
                            color: AppColor.Grey_Color2,
                            indent: 16,
                            endIndent: 16,
                          ),
                          SizedBox(
                            height: 31,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: ButtonComponent(
                                color: AppColor.Main_Color,
                                name: 'Confirm Your Ride',
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => SelectPayment()));
                                }),
                          )
                        ],
                      ),
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
