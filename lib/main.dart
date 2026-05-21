import 'package:flutter/material.dart';
import 'package:t11/app/auth/login.dart';
import 'package:t11/app/auth/sinUp.dart';
import 'package:t11/app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "note app flutter",
      initialRoute: "/",
      routes: {"/": (context) => Login(),
                "/singup":(context) => SingUp(),
                "/home":(context) => Home(),
      },
    );
  }
}
