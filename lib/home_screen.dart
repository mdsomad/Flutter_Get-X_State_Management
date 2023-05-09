import 'package:flutter/material.dart';
import 'package:flutter_get_x_state_management/screen_one.dart';
import 'package:get/get.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" GetX Navigation Using")
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           
           Center(child: TextButton(onPressed: (){

            //* Data Send Next Screen GetX Routes Use
            Get.toNamed('/screenOne',arguments: [
              "Somad",
              "My name is this"
            ]);

          //* Get.to(ScreenOne(name: "Somad",));                                                  //* <-- This GetX push 
          //! Navigator.push(context,MaterialPageRoute(builder: (context)=> ScreenOne()));        //* <-- This Flutter default push 

           }, child:Text("Go to next screen")))

        ],
      ),


      
      
      
      
    );
  }
}