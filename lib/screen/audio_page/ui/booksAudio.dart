import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/screen/audio_page/widget/ReusableText.dart';
import 'package:teraki/screen/audio_page/widget/genreAudio.dart';
import 'package:teraki/screen/audio_page/widget/listofAuido.dart';



import '../../../commonWidget/bottomNavigation.dart';
import '../../../constant/constant.dart';

class BooksAudio extends StatefulWidget {
  const BooksAudio({super.key});

  @override
  State<BooksAudio> createState() => _BooksAudioState();
}

class _BooksAudioState extends State<BooksAudio> {
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
              const ReusableTextAudio(text: "Genre"),
              const  GenerAudio(
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
              const ReusableTextAudio(text: "Latest"),
              const SizedBox(
                height: 10,
              ),
              const ShowMoreAudio(),
              const ReusableTextAudio(text: "Recommended"),
              const SizedBox(
                height: 10,
              ),
              const ShowMoreAudio(),
              const ReusableTextAudio(text: "Trading"),
              const SizedBox(
                height: 10,
              ),
              const ShowMoreAudio(),
            ],
          ),
        ),
      ),
    );
  }
}
