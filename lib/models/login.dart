// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:rideshare_app/models/result_model.dart';

class LoginModel extends ResultModel {
  String password;
  String phone;
  LoginModel({
    required this.password,
    required this.phone,
  });

  LoginModel copyWith({
    String? password,
    String? phone,
  }) {
    return LoginModel(
      password: password ?? this.password,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'phone': phone,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      password: map['password'] as String,
      phone: map['phone'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) =>
      LoginModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LoginModel(password: $password, phone: $phone)';

  @override
  bool operator ==(covariant LoginModel other) {
    if (identical(this, other)) return true;

    return other.password == password && other.phone == phone;
  }

  @override
  int get hashCode => password.hashCode ^ phone.hashCode;
}
