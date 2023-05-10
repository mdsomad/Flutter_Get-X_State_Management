import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_get_x_state_management/counter_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller =
      Get.put(CounterController()); //* <-- created & initialized

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Widget Rebuild");

    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),

      body: Center(child: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Text("All Widget Rebuild Issue Fix",
                style: TextStyle(fontSize: 30)),

            const SizedBox(
              height: 20,
            ),

            Text(
              controller.counter.toString(),
              style: TextStyle(fontSize: 60),
            ),

          ],
        );


      })


    ),



      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
        child: Icon(Icons.add),
      ),


      
    );
  }
}
