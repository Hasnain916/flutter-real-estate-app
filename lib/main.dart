import 'package:flutter/material.dart';
import 'package:home_rent/res/theme.dart';
import 'package:home_rent/view/startedscreen.dart';

void main() async{

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rent Home App',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      // home: const StartedScreen(),
      home: const StartedScreen(),
      // home: const BottomNavi(),
    );
  }
}

