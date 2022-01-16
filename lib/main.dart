import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/config/constants.dart';
import 'package:flutter_profile_ui/routes.dart';
import 'package:get/get.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ToDo UI',
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: "/",
      getPages: pages,
    );
  }
}
