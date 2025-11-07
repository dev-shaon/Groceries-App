import 'dart:convert';
import 'package:groceries_app/API/User_Model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String registerUrl = "https://foodsflow.netlify.app/api/auth/register";
  final String loginUrl = "https://foodsflow.netlify.app/api/auth/login";

  Future<bool> registerUser(UserModel user) async {
    final response = await http.post(
      Uri.parse(registerUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(user.toJson()),
    );

    print("Register Sending Data: ${user.toJson()}");
    print("Register Response Code: ${response.statusCode}");
    print("Register Response Body: ${response.body}");

    if (response.statusCode == 200 || response.statusCode == 201) {
      return true;
    } else {
      print("Register Error: ${response.body}");
      return false;
    }
  }

  Future<bool> loginUser(String email, String password) async {
    final response = await http.post(
      Uri.parse(loginUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"email": email, "password": password}),
    );

    print("Login Request: {email: $email, password: $password}");

    print("Login Response Code: ${response.statusCode}");
    print("Login Response Body: ${response.body}");

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print("Token: ${data['token']}");
      return true;
    } else {
      print("Login Failed: ${response.body}");
      return false;
    }
  }
}
