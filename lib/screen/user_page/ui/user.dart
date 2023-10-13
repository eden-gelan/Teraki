import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/commonWidget/bottomNavigation.dart';
import 'package:teraki/constant/constant.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: cbackgraound.withOpacity(1),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.72),
                  child: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: ctext.withOpacity(1),
                    size: 35,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text('Edit',
                      style: GoogleFonts.inriaSerif(
                        textStyle: TextStyle(
                            color: ctext.withOpacity(1),
                            fontSize: 20,
                            fontWeight: FontWeight.w100),
                      )),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text('Eden Gelan',
                style: GoogleFonts.inriaSerif(
                  textStyle: TextStyle(
                      color: ctext.withOpacity(1),
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                )),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: SvgPicture.asset(
                  'assets/user.svg',
                  height: 209,
                  width: 213,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text('Listended',
                      style: GoogleFonts.inriaSerif(
                        textStyle: TextStyle(
                            color: ctext.withOpacity(1),
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text('Read',
                      style: GoogleFonts.inriaSerif(
                        textStyle: TextStyle(
                            color: ctext.withOpacity(1),
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Column(
                    children: [
                      Text('2',
                          style: GoogleFonts.inriaSerif(
                            textStyle: TextStyle(
                                color: ctext.withOpacity(1),
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        height: 0.5,
                        width: 45.0,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Column(
                    children: [
                      Text('8',
                          style: GoogleFonts.inriaSerif(
                            textStyle: TextStyle(
                                color: ctext.withOpacity(1),
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        height: 0.5,
                        width: 45.0,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
