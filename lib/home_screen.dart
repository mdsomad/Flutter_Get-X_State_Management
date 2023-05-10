import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_get_x_state_management/image_picker_controller.dart';
import 'package:get/get.dart';





//* without setState Use
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

ImagePickerController imagePickerController = Get.put(ImagePickerController());    //* <-- created & initialized
 
 
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Widget Rebuild");

    return Scaffold(

      appBar: AppBar(title: Text("GetX Image pick")),

      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: imagePickerController.imagePath.isNotEmpty ?
                FileImage(File(imagePickerController.imagePath.toString())): null,
              ),
            ),

            TextButton(onPressed: (){
                 imagePickerController.getImageCamera();   //* <-- Call This getImageCamera Functon
            }, child: Text("pick Image Camera")),

            TextButton(onPressed: (){
                 imagePickerController.getImageGallery();   //* <-- Call This getImageGallery Functon
            }, child: Text("pick Image Gallery "))
            
          ],
        );
      })




    );

  }
  
}



































//* setState Use
class HomeUseSetState extends StatefulWidget {
  const HomeUseSetState({super.key});

  @override
  State<HomeUseSetState> createState() => _HomeUseSetStateState();
}

class _HomeUseSetStateState extends State<HomeUseSetState> {
  

 
 List<String> fruitList = ['Orange','Apple','Mango','Grapes'];
 List<String> tempFruitList = [];
 
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Widget Rebuild");

    return Scaffold(

      appBar: AppBar(title: Text("GetX Mark Favourite")),

      body: ListView.builder(
        itemCount:fruitList.length ,
        itemBuilder:(context, index) {
         return Card(
           child: ListTile(
            onTap: () {

              if(tempFruitList.contains(fruitList[index].toString())){
                tempFruitList.remove(fruitList[index].toString());
              }else{
                tempFruitList.add(fruitList[index].toString());
              }
              setState(() {
                
              });
            },
            title: Text(fruitList[index].toString()),
            trailing: Icon(Icons.favorite,color: tempFruitList.contains(fruitList[index].toString()) ? Colors.red : Colors.white,),
           ),
         );
      },)




    );

  }
}