
import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';





class LoginController extends GetxController {

  final emaiController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;
  
  void loginApi()async{

  loading.value = true;

  try {
      
     //* row form data define
      Map newData = {
        'email':emaiController.value.text.toString(),
        'password':emaiController.value.text.toString()
      };



      //* Yah Flutter mein http request & Api hite Karne Ka Tarika
      final response = await post(
      Uri.parse('https://reqres.in/api/login'),

         // body: jsonEncode(newData)                        //* <-- Agar row form mein Deta Hai To Aise Hi bhejna hai

      body: {                                                //* <-- Agar from-data hai to Aise Hi bhejna hai                     
            'email':emaiController.value.text.toString(),
            'password':emaiController.value.text.toString()
           },

            //* Yah API application/json ko Accept nahin karta isiliye headers use nahin kar rahe
            // headers: {
            //   'Content-Type': 'application/json',
            //   'Accept': 'application/json'
            // }
     
     );

     var data = jsonDecode(response.body);
     print(response.statusCode);
     print(data);

     if(response.statusCode == 200){
         loading.value = false;
        Get.snackbar("Login Successfully", 'congrations');
     }else{
         loading.value = false; 
        Get.snackbar("Login Faield", data['error']);
     }
      
    } catch (e) {
      loading.value = false;
      Get.snackbar("Exception", e.toString());
    }
    

  }
  
}