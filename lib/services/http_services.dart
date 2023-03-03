
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class HttpService {

  static Future<List<Welcome>> userProducts() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      var data = response.body;
      return welcomeFromJson(data);
    } else {
      // throw Exception();
      var data = response.body;
      return welcomeFromJson(data);
    }
  }
}