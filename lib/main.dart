
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/utils/app_style.dart';
import 'package:untitled/views/navigation/navigation_page.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flight Demo',
      // initialBinding: GetBinding(),
      color:primary,
      theme: ThemeData(
        primaryColor: primary,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  const NavigationPage(),
    );
  }
}
