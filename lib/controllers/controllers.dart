import 'package:get/get.dart';

import '../models/model.dart';
import '../services/remote_services.dart';

class Controllers extends GetxController {
  var isHidden = true.obs;
  var isLoading = true.obs;
  var productList = <Model>[].obs;
  var isOneList = false.obs;
  var productOnCart = 0.obs;
  var remoteServices = RemoteServices();

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await remoteServices.fetchProducts();
      // var products = await RemoteServices.fetchProducts();
      productList.value = products;
    } finally {
      isLoading(false);
    }
  }

  addCart() {
    return productOnCart.value++;
  }

  toggleVisibility() {
    return isHidden.value = !isHidden.value;
  }
}