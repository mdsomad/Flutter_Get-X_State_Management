// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_get_x_state_management/screen_tow.dart';

class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({Key? key, this.name,}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
                          
        title: Text("Screen One "+ Get.arguments[0],)    //* <-- Receive Data GetX Routes

      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           
           Center(child: TextButton(onPressed: (){

              Get.to(ScreenTow());               //* <-- This GetX pop 
              //! Navigator.pop(context);        //* <-- This Flutter default  pop

           }, child:Text("Go to next screen tow")))

        ],
      ),


      
      
      
      
    );
  }
}