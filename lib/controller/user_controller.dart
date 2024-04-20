import 'dart:convert';

import '../model/user_model.dart';
import 'package:http/http.dart' as http;

class UserController{
  Future<UserModel> fetchUserDetails() async {
    final response = await http.get(Uri.parse('https://run.mocky.io/v3/4ff191af-358d-427c-bc71-5e6031817dec'));
    if (response.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}

