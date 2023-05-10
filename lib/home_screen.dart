import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int x = 0;


 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1),(timer){
      x++;
      setState(() {
      });
    });
  }


  
  
  @override
  Widget build(BuildContext context) {
    print("Widget Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Why you need to learn Getx")
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("All Widget Rebuild Issue",style: TextStyle(fontSize: 30)),

            const SizedBox(height: 20,),

            Text(x.toString(),style: TextStyle(fontSize: 60),),
            
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(onPressed: (){
        x++;
        setState(() {
          
        });
      },child: Icon(Icons.add),),
      
      
      
    );
  }
}