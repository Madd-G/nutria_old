import 'package:get/get.dart';

class GenderController extends GetxController{

  String _selectedGender = "Male";
  String get selectedGender => _selectedGender;

  void setGenderType(String gender) {
    _selectedGender = gender;
    print("Gender:" + selectedGender);
    update();
  }
}