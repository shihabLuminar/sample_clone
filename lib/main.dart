import 'package:flutter/material.dart';
import 'package:sample_clone/view/home_screen/home_screen.dart';
import 'package:sample_clone/view/splash_screen/splash_screen.dart';

//shihab
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const SplashScreen(),
    );
  }
}
