import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //* This Flutter default MediaQuery
    final heigh = MediaQuery.of(context).size.height *1;
    final width = MediaQuery.of(context).size.width *1;

    return Scaffold(
      appBar: AppBar(
        title: Text("Get height & Get widh Using")
      ),

      body: Column(
        children: [
          Container(

            // height: heigh *.6,     //* <-- This Flutter default MediaQuery Use
            height: Get.height *.4,   //* <-- This GetX Provide MediaQuery Use
            width: Get.width * .8,    //* <-- This GetX Provide MediaQuery Use
            color: Colors.red,

            child: Center(child: Text("GetX & Flutter  default MediaQuery Use",
            style:TextStyle(fontSize: 18,fontWeight: FontWeight.
            bold,color: Colors.white),
            ),)
            
          ),




          Container(
            // height: heigh *.6,     //* <-- This Flutter default MediaQuery Use
            height: Get.height *.2,   //* <-- This GetX Provide MediaQuery Use
            width: Get.width *.8,     //* <-- This GetX Provide MediaQuery Use
            color: Colors.teal,
            child: Center(child: Text("Center"),)
          ),


        ],
      ),


      
      
      
      
    );
  }
}