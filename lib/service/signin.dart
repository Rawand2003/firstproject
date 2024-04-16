import 'package:dio/dio.dart';
import 'package:flutter_application_chefapp/model/signmodel.dart';

signin(signmodel user)async{
  Dio dio=Dio();
  Response response=await dio.post("https://food-api-omega.vercel.app/api/v1/chef/signin", data: user.toMap()
  );
  print(response);
  return response.data['token'];
}
