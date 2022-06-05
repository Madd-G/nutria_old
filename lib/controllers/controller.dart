import 'package:get/get.dart';

class Controller extends GetxController {
  var isHidden = true.obs;

  toggleVisibility() {
    return isHidden.value = !isHidden.value;
  }
}
