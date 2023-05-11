import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_get_x_state_management/login_controller.dart';
import 'package:get/get.dart';





//* without setState Use
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

LoginController loginController = Get.put(LoginController());
 
 
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Widget Rebuild");

    return Scaffold(

      appBar: AppBar(title: Text("GetX Login Screen")),

      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              TextFormField(
                controller: loginController.emaiController.value,
                decoration: InputDecoration(
                  hintText: "Email"
                ),
              ),
              TextFormField(
                controller: loginController.passwordController.value,
                decoration: InputDecoration(
                  hintText: "Password"
                ),
              ),
              SizedBox(
                height: 50,
              ),

              Obx(() {
                
              return InkWell(
                onTap: (){
                  loginController.loginApi();
                },
                child: loginController.loading.value ? CircularProgressIndicator() : Container(
                  height: 45,
                  color: Colors.green,
                  child: Center(
                    child: Text("Login"),
                  ),
                ),
              );

              }
             )
              
            ],
          ),
        )
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