import 'package:flutter/material.dart';
import 'package:sample_clone/routes.dart';
import 'package:sample_clone/view/home_screen/home_screen.dart';
import 'package:sample_clone/view/prdouct_details_screen/products_details_scree.dart';
import 'package:sample_clone/view/products_screen/products_screen.dart';
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
      initialRoute: '/',
      title: 'MyApp',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),

      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        "/": (context) => const SplashScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        AppRoutes.homeScreen: (context) => const HomeScreen(),
        AppRoutes.productsScreen: (context) => const ProductsScreen(),
        AppRoutes.productsDetailsScreen:
            (context) => const ProductsDetailsScreen(),
      },
    );
  }
}
