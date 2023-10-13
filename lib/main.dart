import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teraki/commonWidget/bottomNavigation.dart';
import 'package:teraki/constant/constant.dart';
import 'package:teraki/screen/audioDetail/ui/listenBook.dart';
import 'package:teraki/screen/listening/ui/listening.dart';
import 'package:teraki/screen/login_page/ui/login.dart';
import 'package:teraki/screen/user_page/ui/user.dart';
import 'package:teraki/screen/welcome/ui/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: cprimary),
        useMaterial3: true,
      ), 
      home: BottomNavigation(),
    );
  }
}
