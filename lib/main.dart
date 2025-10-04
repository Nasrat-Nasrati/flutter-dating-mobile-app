import 'package:flutter/material.dart';
import 'package:second_mobile_app/pages/profile_page.dart';

void main() => runApp(DatingApp());

class DatingApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Dating App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway',

      ),
      home: ProfilePage(),

    );
  }
}
