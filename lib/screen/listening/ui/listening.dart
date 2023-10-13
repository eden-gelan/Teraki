import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/constant/constant.dart';
import 'package:teraki/screen/listening/widget/bookImage.dart';
import 'dart:ui';

import 'package:teraki/screen/listening/widget/header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:audioplayers/audioplayers.dart';

class Listening extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  'assets/oromay.jpg', // Replace with your image asset path
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY:
                          10), // Adjust the sigmaX and sigmaY values for the desired blur effect
                  child: Container(
                    color: Color.fromARGB(255, 135, 133, 133).withOpacity(
                        0.3), // Adjust the opacity and color as per your preference
                  ),
                ),
              ],
            ),
          ),
          const Positioned(left: 30, top: 80, child: Header()),
          SizedBox(
            height: 50,
          ),
          Positioned(
              left: 20,
              top: 169,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      16), // Set the border radius as desired
                  child: Image.asset(
                    'assets/oromay.jpg', // Replace with your image asset path
                    width: 350,
                    height: 380,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Positioned(
              left: 57,
              top: 634,
              child: Text('Episode 1',
                  style: GoogleFonts.inconsolata(
                    textStyle: TextStyle(
                      color: cbackgraound.withOpacity(1),
                      fontSize: 20,
                    ),
                  ))),
          Positioned(
              left: 140,
              top: 750,
              child: Transform.rotate(
                angle: 3.15,
                child: FaIcon(
                  FontAwesomeIcons.forwardStep,
                  size: 30,
                  color: cbackgraound.withOpacity(1),
                ),
              )),
          Positioned(
            left: 200,
            top: 750,
            child: FaIcon(
              FontAwesomeIcons.play,
              size: 30,
              color: cbackgraound.withOpacity(1),
            ),
          ),
          Positioned(
            left: 260,
            top: 750,
            child: FaIcon(
              FontAwesomeIcons.forwardStep,
              size: 30,
              color: cbackgraound.withOpacity(1),
            ),
          ),
          Positioned(
              left: 30,
              top: 700,
              child: Text(
                "0.00",
                style: GoogleFonts.inconsolata(
                  textStyle: TextStyle(
                    color: cbackgraound.withOpacity(1),
                    fontSize: 20,
                  ),
                ),
              )),
          Positioned(
              left: 352,
              top: 700,
              child: Text(
                "4.52",
                style: GoogleFonts.inconsolata(
                  textStyle: TextStyle(
                    color: cbackgraound.withOpacity(1),
                    fontSize: 20,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
