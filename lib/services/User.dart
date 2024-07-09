import 'package:flutter/material.dart';

class User{
  final String Username;
  final String Email;
  final String Password;

  User({required this.Username,
    required this.Email,
    required this.Password
  });

  Map<String, dynamic> toJson() =>{
    'Username' : Username,
    'Email' : Email,
    'Password' : Password
  };


}