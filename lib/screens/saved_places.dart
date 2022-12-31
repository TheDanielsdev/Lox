// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/appcolor.dart';

class SavedPlaces extends StatelessWidget {
  const SavedPlaces({super.key});

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
        title: Text(
          'Choose a Place',
          style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: AppColor.Grey_Color),
        ),
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity, height: 1, color: AppColor.Grey_Color),
          ListTile(
            leading: Image.asset('assets/lotiom.png'),
            title: Text(
              'Location 1',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: AppColor.Grey_Color),
            ),
            subtitle: Text(
              'Lorem ipsum dolor sit amet, consectetur ',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: AppColor.Grey_Color),
            ),
          ),
          Divider(
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: AppColor.Grey_Color2,
          ),
          ListTile(
            leading: Image.asset('assets/lotiom.png'),
            title: Text(
              'Location 1',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: AppColor.Grey_Color),
            ),
            subtitle: Text(
              'Lorem ipsum dolor sit amet, consectetur ',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: AppColor.Grey_Color),
            ),
          ),
          Expanded(
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
              maxChildSize: 1.0,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          child: Row(children: [
                            Text(
                              'Add to saved place',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.Main_Color),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset('assets/Star 1.png')
                          ]),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
