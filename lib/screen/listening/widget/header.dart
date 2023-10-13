import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/constant/constant.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white,
          size: 40,
        ),
        SizedBox(
          width: 80,
        ),
        Text('playing from \n   oromay',
            style: GoogleFonts.inconsolata(
              textStyle: TextStyle(
                color: cbackgraound.withOpacity(1),
                fontSize: 16,
              ),
            )),
      ],
    );
  }
}
