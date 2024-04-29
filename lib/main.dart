import 'package:flutter/material.dart';
import 'package:wattsapp_clon/colors.dart';
import 'package:wattsapp_clon/responsive_layout.dart';
import 'package:wattsapp_clon/screenlayout/mobile_screen_layout.dart';
import 'package:wattsapp_clon/screenlayout/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wattsapp UI',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: ResponsiveLayout(
          MobileScreenLayout: mobile_screen_layout(),
          webScreenLayout: web_screen_layout()),
    );
  }
}
