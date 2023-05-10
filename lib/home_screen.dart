import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_get_x_state_management/example_two.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

 ExampleTwoController exampleTwoControlle = Get.put(ExampleTwoController());    //* <-- created & initialized

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Widget Rebuild");

    return Scaffold(

      appBar: AppBar(title: Text("GetX Example Two")),

      body: Column(
        children: [
          
        Obx(() =>  Container(
            height: 200,
            width: 200,
            color: Colors.pink.withOpacity(exampleTwoControlle.opacity.value),
          ),),
         

          Obx(() =>  Slider(value: exampleTwoControlle.opacity.value
          ,onChanged: (value){
            print(value);
            exampleTwoControlle.setOpacity(value);
          }))
         
          
            
        ],
      )




    );
    
  }
}
