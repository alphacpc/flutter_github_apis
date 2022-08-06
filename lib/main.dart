import 'package:flutter/material.dart';
import 'package:github_api_flutter/pages/home.page.dart';
import 'package:github_api_flutter/pages/user.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/users": (context) => UserPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


