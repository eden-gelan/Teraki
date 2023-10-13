import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teraki/constant/constant.dart';
import 'package:teraki/model/bookDetail.dart';

class ReadDetail extends StatelessWidget {
  const ReadDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    color: Color.fromARGB(255, 236, 77, 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              navigateBack(context);
                            },
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: cbackgraound.withOpacity(1),
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: cbackgraound.withOpacity(1),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 900,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 236, 77, 20)),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 100,
                top: 120,
                child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      'assets/oromay.jpg',
                    )),
              ),
              Positioned(
                left: 160,
                top: 340,
                child: Center(
                  child: Container(
                    child: Text(
                      'መግቢያ',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 400,
                child: Center(
                  child: Container(
                    child: Text(
                        '       Lorem ipsum dolor sit amet, consectetur  \nsed do eiusmod tempor incididunt ut labore et\ndolore magna aliqua. Ut enim ad minim veni \nquis nostrud exercitation ullamco laboris nisi \naliquip ex ea commodo consequat. Duis aute \ndolor in reprehenderit in voluptate velit esse\ndolore eu fugiat nulla pariatur. Excepteur sint \noccaecat cupidatat non proident, sunt in culpa  \nofficia deserunt mollit anim id est laborum.',
                        style: GoogleFonts.inriaSerif(
                          textStyle: TextStyle(
                            color: ctext.withOpacity(1),
                            fontSize: 16,
                          ),
                        )),
                  ),
                ),
              ),
              Positioned(
                left: 160,
                top: 640,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: csecondary.withOpacity(1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text('READ',
                              style: GoogleFonts.graduate(
                                textStyle: TextStyle(
                                  color: Colors.white.withOpacity(1),
                                  fontSize: 16,
                                ),
                              )),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
