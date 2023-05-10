import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_get_x_state_management/example_controller_three.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

 ExampleThreeController exampleThreeController = Get.put(ExampleThreeController());    //* <-- created & initialized
 
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Widget Rebuild");

    return Scaffold(

      appBar: AppBar(title: Text("GetX Example Three")),

      body: Column(
        children: [
          
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Notifications"),
            Obx((){

            return Switch(value: exampleThreeController.notification.value, onChanged: (value) {
                 exampleThreeController.setNotification(value);
                 print(exampleThreeController.notification.value);
            },);

            })
            
           
          ],
         )
         
          
            
        ],
      )




    );

  }
}
