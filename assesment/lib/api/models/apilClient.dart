import 'package:buss_project/constands/apiconfig.dart';
import 'package:dio/dio.dart';

//import '../constands/ApiConfig.dart';
import '../models/LoginModel.dart';

class ApiClient {
  final Dio _dio = Dio();

  Future<LoginModel> login(String email, String password) async {
    try {
      var url = ApiConfig.baseUrl + ApiEndPoints.login;
      FormData data =
          FormData.fromMap({'username': email, 'password': password});
      Response response = await _dio.post(
        url,
        data: data,
      );
      print(response.data);
      return LoginModel.fromJson(response.data);
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future<LoginModel> homeData(String email, String password) async {
    try {
      var url = ApiConfig.baseUrl + ApiEndPoints.busList;
      Response response = await _dio.get(
        url,
      );
      return LoginModel.fromJson(response.data);
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  // Future<Response> logout(String accessToken) async {
  //   try {
  //     Response response = await _dio.get(
  //       'https://api.loginradius.com/identity/v2/auth/access_token/InValidate',
  //       queryParameters: {'apikey': ApiSecret.apiKey},
  //       options: Options(
  //         headers: {'Authorization': 'Bearer $accessToken'},
  //       ),
  //     );
  //     return response.data;
  //   } on DioError catch (e) {
  //     return e.response!.data;
  //   }
  // }
}
