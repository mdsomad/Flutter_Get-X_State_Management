import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_get_x_state_management/favorite_controller.dart';
import 'package:get/get.dart';





//* without setState Use
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

 FavoriteController favoriteController = Get.put(FavoriteController());    //* <-- created & initialized
 
 
 
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
        itemCount: favoriteController.fruitList.length ,
        itemBuilder:(context, index) {
         return Card(
           child: ListTile(
            onTap: () {

              if(favoriteController.tempFruitList.contains(favoriteController.fruitList[index].toString())){

                favoriteController.removFromFavorite(favoriteController.fruitList[index].toString());      //* <-- Call This removFromFavorite Function

              }else{

                favoriteController.addToFavorite(favoriteController.fruitList[index].toString());          //* <-- Call This addToFavorite Function

              }

            },

            title: Text(favoriteController.fruitList[index].toString()),
            trailing:Obx(() => Icon(Icons.favorite,color: favoriteController.tempFruitList.contains(favoriteController.fruitList[index].toString()) ? Colors.red : Colors.white,),)
           ),

         );

      },)




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