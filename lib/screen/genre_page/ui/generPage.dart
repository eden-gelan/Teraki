import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/constant/constant.dart';
import 'package:teraki/screen/genre_page/widget/listview.dart';
import 'package:teraki/screen/genre_page/widget/myGener.dart';

class Generpage extends StatefulWidget {
  const Generpage({super.key});

  @override
  State<Generpage> createState() => _GenerpageState();
}

class _GenerpageState extends State<Generpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: cbackgraound,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.72),
                  child: GestureDetector(
                    onTap: () {
                      navigateBack(context);
                    },
                    child: Icon(
                      Icons.keyboard_arrow_left_rounded,
                      color: ctext.withOpacity(1),
                      size: 35,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('History',
                    style: GoogleFonts.inriaSerif(
                      textStyle: TextStyle(
                          color: ctext.withOpacity(1),
                          fontSize: 28,
                          fontWeight: FontWeight.w100),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyListView(),
          ],
        ),
      ),
    );
  }

  void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
