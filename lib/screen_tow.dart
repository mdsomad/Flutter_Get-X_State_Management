import 'package:flutter/material.dart';
import 'package:get/get.dart';




class ScreenTow extends StatefulWidget {
  const ScreenTow({super.key});

  @override
  State<ScreenTow> createState() => _ScreenTowState();
}

class _ScreenTowState extends State<ScreenTow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two")
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           
           Center(child: TextButton(onPressed: (){
              Get.back();
              Get.back();
             //! Navigator.pop(context);
           }, child:Text("Go back")))

        ],
      ),


      
      
      
      
    );
  }
}