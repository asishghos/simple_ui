import 'package:flutter/material.dart';
import 'package:taskof_ui/pages/home_screen.dart';
import 'package:taskof_ui/pages/levels_screen.dart';
import 'package:taskof_ui/pages/login_screen.dart';
import 'package:taskof_ui/pages/news_screen.dart';
import 'package:taskof_ui/pages/splash_screen.dart';
import 'package:taskof_ui/pages/start_task_screen.dart';

void main() {
  runApp(CoinBoostApp());
}

class CoinBoostApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CoinBoost',
      theme: ThemeData(
        primaryColor: Color(0xFFF29100),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/levels': (context) => LevelsScreen(),
        '/news': (context) => NewsScreen(),
        '/start_task': (context) => StartTaskScreen(),
      },
    );
  }
}
