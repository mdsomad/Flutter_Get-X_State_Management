import 'package:flutter/material.dart';
import 'package:flutter_get_x_state_management/home_screen.dart';
import 'package:flutter_get_x_state_management/language.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      translations: Languages(),          //* Add This Code
      locale: Locale('en','US'),          //* <-- Save Value assign this (shared preference use kare to)
      fallbackLocale: Locale('en','US'),  //* Add This Code

      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),


    );
  }
}

