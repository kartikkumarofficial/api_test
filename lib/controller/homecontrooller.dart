import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/model.dart';

class HomeController extends GetxController {
  RxList<Mobile> data = <Mobile>[].obs;
  RxBool isLoading = false.obs;

  Future<void> getRes() async {
    try{

        isLoading.value = true;

      var uri = Uri.parse("https://api.restful-api.dev/objects");
      var res = await http.get(uri);
      if (res.statusCode == 200) {

          data.value = List<Mobile>.from(jsonDecode(res.body).map((v) => Mobile.fromJson(v)));
          isLoading.value = false;

      } else {
        print(res.body);
      }
    }catch(e){
      print(e);
    }
  }


}