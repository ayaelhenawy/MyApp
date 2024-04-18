import 'package:flutter/material.dart';
import 'package:myproject/src/Forgetpassword.dart';
import 'package:myproject/src/Login.dart';
import 'package:myproject/src/OTPValid.dart';
import 'package:myproject/src/ResetPssword.dart';
import 'package:myproject/src/inboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  //void first() async{
  //SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Inboard(),
    );
  }
}
