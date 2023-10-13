import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teraki/screen/signup_page/widget/buttons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/screen/signup_page/widget/textfilds.dart';
import '/constant/constant.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Buttons(),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SvgPicture.asset(
                  'assets/signup.svg',
                  width: 374,
                  height: 300,
                ),
              ),
              const Textfields(),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 60, 10, 0),
                child: GestureDetector(
                  onTap: () {},
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
