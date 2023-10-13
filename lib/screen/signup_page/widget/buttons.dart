import 'package:flutter/material.dart';
import 'package:teraki/constant/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/screen/login_page/ui/login.dart';
import 'package:teraki/screen/signup_page/ui/signup.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
          child: GestureDetector(
            onTap: () {
              navigateToLogin(context);
            },
            child: Container(
              height: 36,
              width: 86,
              decoration: BoxDecoration(
                  color: cbackgraound.withOpacity(1),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 5))
                  ]),
              child: Center(
                child: Text('login',
                    style: GoogleFonts.graduate(
                      textStyle: TextStyle(
                        color: ctext.withOpacity(1),
                        fontSize: 16,
                      ),
                    )),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            navigateToSignUP(context);
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
              child: Text('signup',
                  style: GoogleFonts.graduate(
                    textStyle: TextStyle(
                      color: cbackgraound.withOpacity(1),
                      fontSize: 16,
                    ),
                  )),
            ),
          ),
        )
      ],
    );
  }

  void navigateToLogin(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  
  
  void navigateToSignUP(BuildContext context) {
     Navigator.push(context, MaterialPageRoute(builder: (context) =>Signup()));
  }
}

