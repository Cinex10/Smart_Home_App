import 'package:flutter/material.dart';
import 'package:flutter_application_3/GatewayPage.dart';
import 'package:flutter_application_3/Home.dart';
import 'package:flutter_application_3/LightPage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: Home.id,
    routes: {
      Home.id: (context) => Home(),
      GatewayPage.id: (context) => GatewayPage(),
      LightPage.id: (context) => LightPage(),
    },
    debugShowCheckedModeBanner: false,
    title: 'Smart',
  ));
}
