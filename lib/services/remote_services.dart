import 'package:http/http.dart' as http;
import '../models/model.dart';

class RemoteServices {
  // var client = http.Client();
  final String url = 'https://nutriaapi.herokuapp.com/get-fruit';

  Future<List<Model>> fetchProducts() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print(" =============== fetch Product ===============");
      return modelFromJson(jsonString);
    } else if (response.statusCode == 500){
      print(" ==== Rerun fetchProducts =======");
      return fetchProducts();
    } else {
      print(" ================ Throw Error ==============");
      throw response.statusCode;
    }
  }
// Future<List<Product>> fetchProducts() async {
//   var response = await client.get(Uri.parse(url));
//   if (response.statusCode == 200) {
//     var jsonString = response.body;
//     return productFromJson(jsonString);
//   } else {
//     //show error message
//     throw response.statusCode;
//   }
// }
}
