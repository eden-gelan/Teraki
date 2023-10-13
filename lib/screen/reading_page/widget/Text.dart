import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/constant/constant.dart';

class ReusableText extends StatelessWidget {
  final String text;

  const ReusableText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27),
      child: Container(
          alignment: Alignment.topLeft,
          child: Text(text,
              style: GoogleFonts.hahmlet(
                textStyle: TextStyle(
                  color: ctext.withOpacity(1),
                  fontSize: 21,
                ),
              ))),
    );
  }
}
