import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{

RxString imagePath = ''.obs;
 

//TODO Create getImageCamera Function
 Future getImageCamera()async{
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source:ImageSource.camera);

    if(image != null){
      imagePath.value = image.path.toString();
    }
    
 }

//TODO Create getImageGallery Function
 Future getImageGallery()async{
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source:ImageSource.gallery);
    if(image != null){
      imagePath.value = image.path.toString();
    }
    
 }


  
  
}