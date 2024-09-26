import 'package:get/get.dart';

class CropController extends GetxController {
  var selectedCropIndex = 0.obs; 
  void updateCropIndex(int index) {
    selectedCropIndex.value = index;
  }
}
