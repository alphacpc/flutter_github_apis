import 'package:flutter/material.dart';


class UserPage extends StatelessWidget{
  const UserPage({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Detail utilisateur"),),
      body: Center(
        child: Text('Users Page', style: TextStyle(fontSize: 24),)
      ),
    );
  }
}