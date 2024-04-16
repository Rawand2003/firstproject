import 'package:dio/dio.dart';
import 'package:flutter_application_chefapp/config.dart';
import 'package:flutter_application_chefapp/model/menumodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<menumodel>> getMeal() async {
  Dio dio = Dio();
  Response response = await dio.get(
      "https://food-api-omega.vercel.app/api/v1/chef/get-chef/66166877047e0824bcaa3368/meals",
      options: Options(headers: {
        "token": "FOODAPI ${config.get<SharedPreferences>().getString("token")}"
      }));

      print(response);

  List<menumodel> menus = List.generate(
      response.data['meals'].length, (index) => menumodel.fromMap(response.data['meals'][index]));

      print(menus);
  return menus;
}
