import 'package:flutter/material.dart';
import 'package:teraki/constant/constant.dart';

class MyGener extends StatefulWidget {
  const MyGener({super.key});

  @override
  State<MyGener> createState() => _MyGenerState();
}

class _MyGenerState extends State<MyGener> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: 90,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(children: [
                  Container(
                    child: Text(
                      "አጼ ቴዎድሮስ እና \n የኢትዮጵያ አንድነት",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 251, 218, 86),
                          size: 20,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 251, 218, 86),
                          size: 20,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 251, 218, 86),
                          size: 20,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 251, 218, 86),
                          size: 20,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.star_half,
                          color: Color.fromARGB(255, 251, 218, 86),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                    color: cprimary.withOpacity(1),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 33),
                child: Container(
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    size: 40,
                    color: csecondary.withOpacity(1),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
