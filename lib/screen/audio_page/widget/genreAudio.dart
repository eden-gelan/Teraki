import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/screen/genre_page/ui/generPage.dart';

import '../../../constant/constant.dart';

class GenerAudio extends StatelessWidget {
  final List<String> buttonTitles;

  const GenerAudio({Key? key, required this.buttonTitles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 33, top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: buttonTitles.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  navigateToGener(context);
                },
                child: Container(
                  height: 40,
                  width: 111,
                  decoration: BoxDecoration(
                      color: csecondary.withOpacity(0.34),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 5))
                      ]),
                  child: Center(
                    child: Text(buttonTitles[index],
                        style: GoogleFonts.hahmlet(
                          textStyle: TextStyle(
                            color: cbackgraound.withOpacity(1),
                            fontSize: 16,
                          ),
                        )),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void navigateToGener(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Generpage()));
  }
}
