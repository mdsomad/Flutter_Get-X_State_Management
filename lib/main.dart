import 'package:flutter/material.dart';
import 'package:flutter_get_x_state_management/home_screen.dart';
import 'package:flutter_get_x_state_management/screen_one.dart';
import 'package:flutter_get_x_state_management/screen_tow.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),

      //* GetX Routes Using
      getPages: [
        GetPage(name: '/' ,page:()=> HomeScreen()),
        GetPage(name: '/screenOne' ,page:()=> ScreenOne()),
        GetPage(name: '/screenTow' ,page:()=> ScreenTow()),
      ],
    );
  }
}

