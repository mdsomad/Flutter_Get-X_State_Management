import 'package:get/get.dart';

class FavoriteController extends GetxController{

 
 RxList<String> fruitList = ['Orange','Apple','Mango','Grapes'].obs;
 RxList tempFruitList = [].obs;
 

//TODO Create addToFavorite Function
addToFavorite(String value){
    tempFruitList.add(value);
}




//TODO Create removFromFavorite Function
removFromFavorite(String value){
    tempFruitList.remove(value);
}



  
  
}