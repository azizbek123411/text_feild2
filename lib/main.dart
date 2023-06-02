import 'package:flutter/material.dart';
import 'package:text_feild2/home_page.dart';
import 'package:text_feild2/sign_in.dart';
import 'package:text_feild2/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const SignIn(),
      routes: {
        SignIn.id:(context)=>const SignIn(),
        SignUp.id:(context)=>const SignUp(),
        HomePage.id:(context)=>const HomePage(),
      },
    );
  }
}

