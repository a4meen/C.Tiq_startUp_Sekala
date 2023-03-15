// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.phoneNumber,
    required this.name,
    required this.password,
    required this.longitude,
    required this.latitude,
    required this.email,
    required this.roles,
  });

  final String phoneNumber;
  final String name;
  final String password;
  final String longitude;
  final String latitude;
  final String email;
  final Roles roles;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        phoneNumber: json["phoneNumber"],
        name: json["name"],
        password: json["password"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        email: json["email"],
        roles: Roles.fromJson(json["roles"]),
      );

  Map<String, dynamic> toJson() => {
        "phoneNumber": phoneNumber,
        "name": name,
        "password": password,
        "longitude": longitude,
        "latitude": latitude,
        "email": email,
        "roles": roles.toJson(),
      };
}

class Roles {
  Roles({
    required this.master,
  });

  final int master;

  factory Roles.fromJson(Map<String, dynamic> json) => Roles(
        master: json["Master"],
      );

  Map<String, dynamic> toJson() => {
        "Master": master,
      };
}
