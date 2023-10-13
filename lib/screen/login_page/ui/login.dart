import 'package:flutter/material.dart';
import 'package:teraki/screen/login_page/widget/buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/screen/reading_page/ui/booksread.dart';

import '/constant/constant.dart';

import 'package:teraki/screen/login_page/widget/textfilds.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      automaticallyImplyLeading: false, ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Buttons(),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: SvgPicture.asset(
                  'assets/login.svg',
                  width: 447,
                  height: 324,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              const Textfields(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: Text('Forgot passowrd?',
                    style: GoogleFonts.graduate(
                      textStyle: TextStyle(
                        color: ctext.withOpacity(1),
                        fontSize: 14,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 60, 10, 0),
                child: GestureDetector(
                  onTap: () {
                    navigateTohome(context);
                  },
                  child: Container(
                    height: 36,
                    width: 86,
                    decoration: BoxDecoration(
                        color: csecondary.withOpacity(1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ]),
                    child: Center(
                      child: Text('submit',
                          style: GoogleFonts.graduate(
                            textStyle: TextStyle(
                              color: cbackgraound.withOpacity(1),
                              fontSize: 16,
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(180, 50, 0, 0),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.circle_outlined,
                        color: csecondary.withOpacity(1),
                      ),
                      width: 0.2,
                      height: 0.2,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.6),
                            BlendMode.dstATop,
                          ),
                          child: Icon(
                            Icons.circle_rounded,
                            color: csecondary.withOpacity(1),
                          )),
                      width: 0.2,
                      height: 0.2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigateTohome(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Books()));
  }
}
