import 'package:dio/dio.dart';
import 'package:dio_practice/models/auth_models/login_model.dart';
import 'package:dio_practice/utils/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class LoginApi {
  factory LoginApi(Dio dio, {String baseUrl}) = _LoginApi;

  @POST("/customer/login")
  Future<LoginBodyModel> login(@Body() Map<String, dynamic> data);
}

// // Add the following model class if it's not defined elsewhere
// class LoginModel {
//   // Define the structure of your login response model here
// }
