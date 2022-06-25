import 'package:http/http.dart' as http;
import '../models/model.dart';

class RemoteServices {
  // var client = http.Client();
  // final String url = 'https://fakestoreapi.com/products';
  final String url = 'https://nutriaapi.herokuapp.com/get-fruit';

  Future<List<Model>> fetchProducts() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return modelFromJson(jsonString);
    } else {
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
