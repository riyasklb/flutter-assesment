// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.status,
    required this.name,
    required this.refresh,
    required this.access,
    required this.message,
    required this.urlId,
  });

  bool status;
  String name;
  String refresh;
  String access;
  String message;
  String urlId;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        name: json["name"],
        refresh: json["refresh"],
        access: json["access"],
        message: json["message"],
        urlId: json["url_id"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "name": name,
        "refresh": refresh,
        "access": access,
        "message": message,
        "url_id": urlId,
      };
}
