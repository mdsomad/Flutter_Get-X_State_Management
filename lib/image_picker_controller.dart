import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


//* First Add This Package --> image_picker: ^0.8.7+4
//* image picker permission
//* permission Add This location -->  AndroidManifest.xml
//  <uses-permission android:name="android.permission.INTERNET" />
//  <uses-permission android:name="android.permission.WRITE_INTERNAL_STORAGE" />
//  <uses-permission android:name="android.permission.READ_INTERNAL_STORAGE" />







//* image picker permission
//* permission Add This location --> ios/Runner/info.plist
// <key>NSPhotoLibraryUsageDescription</key>
// <string>App needs access to photo lib for profile images</string>
// <key>NSCameraUsageDescription</key>
// <string>To capture profile photo please grant camera access</string>









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