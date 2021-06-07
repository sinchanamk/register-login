import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme:ThemeData(brightness:Brightness.dark),
    home:login(),
  ));

}
class login extends StatefulWidget{
  @override
  _loginState createState()=> _loginState();

}
// ignore: camel_case_types
class _loginState extends State<login>
{
  @override
   Widget build(BuildContext context) {
  // ignore: prefer_const_constructors
  return DecoratedBox(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/bg_frame.jpg"),
       fit: BoxFit.cover),
    ),
    child: Center(child: FlutterLogo(size: 300)),
  );
}}