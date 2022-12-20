import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/main_screen.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GetX',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  MainScreen());
  }
}
