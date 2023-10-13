import 'package:flutter/material.dart';

class Textfields extends StatefulWidget {
  const Textfields({super.key});

  @override
  State<Textfields> createState() => _TextfieldsState();
}

class _TextfieldsState extends State<Textfields> {
  final formKey = GlobalKey<FormState>();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your password',
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    ),
                  ),
                ),
                const Positioned(
                    top: 50, left: 50, child: Icon(Icons.panorama_fish_eye))
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Renter your password',
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    ),
                  ),
                ),
                const Positioned(
                    top: 50, left: 50, child: Icon(Icons.panorama_fish_eye))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
