import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get userController => Get.find();

  RxString username = 'Alamsyah'.obs;
  RxString imagePath = 'assets/images/profile.png'.obs;
  RxString email = 'alamsyah@gmail.com'.obs;
  RxString address = 'kebumen'.obs;
  RxString language = 'English'.obs;
  RxString gender = 'Male'.obs;
}
