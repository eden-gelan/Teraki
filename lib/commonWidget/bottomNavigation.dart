import 'package:flutter/material.dart';
import 'package:teraki/constant/constant.dart';

import 'package:teraki/screen/audio_page/ui/booksAudio.dart';
import 'package:teraki/screen/favourite/ui/favourite.dart';
import 'package:teraki/screen/reading_page/ui/booksread.dart';
import 'package:teraki/screen/user_page/ui/user.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List pages = [
    Books(),
    BooksAudio(),
    Favourite(),
    User(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: cprimary.withOpacity(1),
          unselectedItemColor: ctext.withOpacity(0.8),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.book_rounded,
                )),
            BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.headset_rounded,
                )),
            BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.favorite,
                )),
            BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.person_2,
                )),
          ]),
    );
  }
}
