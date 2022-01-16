import 'package:flutter_profile_ui/screens/home_screen.dart';
import 'package:flutter_profile_ui/screens/message_screen.dart';
import 'package:flutter_profile_ui/screens/profile_screen.dart';
import 'package:flutter_profile_ui/screens/statistic_screen.dart';
import 'package:get/get.dart';

List<GetPage> pages = [
  GetPage(name: "/", page: () => HomeScreen()),
  GetPage(name: "/messages", page: () => MessageScreen()),
  GetPage(name: "/profile", page: () => ProfileScreen()),
  GetPage(name: "/stats", page: () => StatisticScreen()),
];
