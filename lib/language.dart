import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{


  //TODO 
  @override
   Map<String,Map<String,String>> get keys =>{
  
    'en_Us':{                                    //* <-- Add multiple languages
      "message":"What is your name",
      "name":"Amir Hamja"
    },

    'hi_IN':{
      "message":"आपका क्या नाम है",
      "name":"अमीर हमजा"
    }
    
     
   };



   
}