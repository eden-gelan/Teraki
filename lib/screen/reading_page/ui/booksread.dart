import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:teraki/screen/reading_page/widget/Text.dart';
import 'package:teraki/screen/reading_page/widget/genre.dart';
import 'package:teraki/screen/reading_page/widget/listofbooks.dart';

import '../../../commonWidget/bottomNavigation.dart';
import '../../../constant/constant.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: SvgPicture.asset(
                        'assets/user.svg',
                        height: 54,
                        width: 54,
                      ),
                    ),
                  ),
                ],
              ),
              const ReusableText(text: "Genre"),
              const HorizontalButtonList(
                buttonTitles: [
                  'Romance',
                  'History',
                  'fiction',
                  'Non-fict',
                  'Psychology',
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableText(text: "Latest"),
              const SizedBox(
                height: 10,
              ),
              const ShowMoreGrid(),
              const ReusableText(text: "Recommended"),
              const SizedBox(
                height: 10,
              ),
              const ShowMoreGrid(),
              const ReusableText(text: "Trading"),
              const SizedBox(
                height: 10,
              ),
              const ShowMoreGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
