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
        title: Text("GetX Dialog Alert & Botton sheet Using")
      ),

      body: Column(
        children: [



        //* GetX Dialog Alert Code
          Card(
            child: ListTile(
              title: Text("GetX Dialog Alert"),
              subtitle: Text("Getx dialog alert with getX"),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delet chat',
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  backgroundColor: Colors.yellow,
                  middleText: "Are you sure you want to delet this chat?",
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text("Ok")),
                  cancel: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text("Cancel")),

                  content: Column(
                    children: [
                      Text("Multiple Widget add"),
                      Text("children"),
                      Text("or"),
                      Text("child"),
                      Text("Ok"),
                      Text("Cancel"),
                      Text("Ok"),
                      Text("Cancel"),
                    ],
                  )
                  
                );
              },

            ),
          ),




        //* GetX Botton sheet Code
          Card(
            child: ListTile(
              title: Text("GetX Botton sheet"),
              subtitle: Text("Getx Botton sheet with getX"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [

                       const SizedBox(height: 20,),

                       Text("Theme"),


                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());   //* <-- GetX Light Theme Code
                          },
                        ),



                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark Theme"),
                          onTap: () {
                              Get.changeTheme(ThemeData.dark());   //* <-- GetX Dark Theme Code
                          },
                        )




                      ],
                    ),
                    
                  )
                );
              },

            ),
          ),










        ],
      ),


      
      
      
      
    );
  }
}