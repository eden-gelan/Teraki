import 'package:flutter/material.dart';
import 'package:teraki/screen/audioDetail/widget/episodes.dart';
import 'package:teraki/screen/audioDetail/widget/listenDetail.dart';
import 'package:teraki/screen/readDetail_page/widget/readDetail1.dart';

class ListenBook extends StatefulWidget {
  const ListenBook({super.key});

  @override
  State<ListenBook> createState() => _ListenBookState();
}

class _ListenBookState extends State<ListenBook> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ListenDetail(),
        ],
      ),
    );
  }
}
