import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile_flutter/model/post_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  Future<http.Response> authenticate(String loginName, String password) async {
    final uri = Uri.parse('https://naima.uz/v1/auth/login');
    final authRequest = LoginModel(loginName: loginName, password: password);
    final body = json.encode(authRequest.toJson());
    final response = await http.post(uri, body: body, headers: {
      'Content-Type': 'application/json',
    });
    return response;
  }

  Future<http.Response> sendaccesTkn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dynamic token = prefs.getString('token');
    final headers = {
      'Authorization': 'Bearer $token',
    };
    json.encode(headers);
    final uri = Uri.parse('https://naima.uz/v1/categories');
    final response = await http.get(uri, headers: headers);

    // Handle the response, including parsing JSON if needed
    // ...
    if (response.statusCode == 200) {
      print(response.statusCode);
    } else {
      print('else else else else');
    }
    return response;
  }

  // Set the request headers
}
