import 'package:flutter/material.dart';
import 'package:teraki/screen/readDetail_page/widget/description.dart';

import 'package:teraki/screen/readDetail_page/widget/readDetail1.dart';

class ReadBook extends StatefulWidget {
  const ReadBook({super.key});

  @override
  State<ReadBook> createState() => _ReadBookState();
}

class _ReadBookState extends State<ReadBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ReadDetail(),
          ],
        ),
      ),
    );
  }
}
