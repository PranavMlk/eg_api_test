import 'package:flutterapi/services/http_services.dart';
import 'package:get/get.dart';

class UserController extends GetxController {

  var isLoading = true.obs;
  var userList = [].obs;

  @override
  void onInit() {
    userProducts();
    super.onInit();
  }

  void userProducts() async {
    try {
      isLoading(true);
      var user = await HttpService.userProducts();
      if (user != null) {
        userList.value = user;
      }
    } finally {
      isLoading(false);
    }
  }
}

