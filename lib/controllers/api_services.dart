import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sekala/completeProfile.dart';
import 'package:sekala/singUpPage.dart';

final Map<String, dynamic> enteredData = {
  "phoneNumber": userNumber,
  "name": userName,
  "password": userPass,
  "longitude": "33",
  "latitude": "44",
  "email": enteredEmail,
  "roles": {"Master": 1000}
};

class ApiServieces {
  Future<Welcome>() async {
    var uri = Uri.parse("https://sikkala.onrender.com/api/register");

    try {
      print(enteredData);
      print("starting...");

      final response = await http.post(
        uri,
        body: jsonEncode(enteredData),
        headers: {'Content-Type': 'application/json'},
      );

      print(response.body);
    } catch (er) {
      print("eeerorrrrrrrrrrr: $er");
    }
  }
}
