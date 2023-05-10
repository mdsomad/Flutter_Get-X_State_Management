import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 bool LanguageColor = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Change App Language Using")
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        ListTile(
          title: Text('message'.tr,style: TextStyle(color:LanguageColor ? Colors.green : Colors.pink),),
          subtitle: Text('name'.tr,style: TextStyle(color:LanguageColor ? Colors.green : Colors.pink),),
        ),
      
    const SizedBox(height: 50,),
      
      Row(
        children: [

          OutlinedButton(onPressed: (){
            LanguageColor = false;
            Get.updateLocale(Locale('en','US'));
          }, child: Text("English")),
      
         const SizedBox(width: 20,),
      
          OutlinedButton(onPressed: (){
              LanguageColor = true;
             Get.updateLocale(Locale('hi','IN'));
          }, child: Text("Hindi"))


        ],
      )
      
      
  ],
),


      
      
      
      
    );
  }
}