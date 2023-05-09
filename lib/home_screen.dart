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
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X Using")
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar("Show SnackBar", "Hello",
        icon: Icon(Icons.add,color: Colors.white,),
        onTap: (snack) {
          
        },
        mainButton: TextButton(onPressed: (){
          print("Click Button");
        }, child:Text("Click")),
        backgroundColor: Colors.pink,
        snackPosition: SnackPosition.TOP
        
        );
      }),
      
      
      
      
    );
  }
}