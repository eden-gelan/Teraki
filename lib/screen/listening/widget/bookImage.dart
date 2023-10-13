import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset('assets/oromay.jpg'),
        height: 50,
      ),
    );
  }
}
