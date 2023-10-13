import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constant/constant.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(7, 30, 7, 0),
                child: SvgPicture.asset(
                  'assets/welcome.svg',
                  width: 411,
                  height: 327,
                ),
              ),
              Container(
                child: Text(
                  'Welcome \n To the',
                  style: GoogleFonts.graduate(
                    textStyle: TextStyle(
                      fontSize: 40,
                      color: ctext.withOpacity(1),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.only(left: 130.0),
                      child: Text(
                        'ተራኪ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: csecondary.withOpacity(1),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: csecondary.withOpacity(1),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: csecondary.withOpacity(1),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(180, 40, 0, 0),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.circle_rounded,
                        color: csecondary.withOpacity(1),
                      ),
                      width: 0.2,
                      height: 0.2,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      child: Icon(
                        Icons.circle_outlined,
                        color: csecondary.withOpacity(1),
                      ),
                      width: 0.2,
                      height: 0.2,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
