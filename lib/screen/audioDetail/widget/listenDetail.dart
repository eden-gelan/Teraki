import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/constant/constant.dart';
import 'package:teraki/model/bookDetail.dart';

class ListenDetail extends StatefulWidget {
  const ListenDetail({super.key});

  @override
  State<ListenDetail> createState() => _ListenDetailState();
}

class _ListenDetailState extends State<ListenDetail> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenHeight / 3,
            child: Container(
              color: csecondary.withOpacity(1),
            ))
      ],
    );
  }

  void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
