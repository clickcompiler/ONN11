import 'package:cricket/UI/splash/splash.dart';
import 'package:cricket/routhing/app_page.dart';
import 'package:cricket/theme/GlobalApp_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.instance.lightTheme,
      home: const SplashScreen(),
      getPages: AppPages.routes,
    );
  }
}
