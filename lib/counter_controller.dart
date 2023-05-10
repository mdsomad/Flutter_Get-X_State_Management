import 'package:get/get.dart';

class CounterController extends GetxController{

  // final counter = 0.obs;   //* <-- GetX Meni variable is tarike se use kar sakte hai
  RxInt counter = 0.obs;  



  incrementCounter(){
    counter.value++;
    print(counter.value);
  }
  
  
}