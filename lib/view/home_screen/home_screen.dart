import 'package:flutter/material.dart';
import 'package:sample_clone/core/constants/image_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(height: 32, width: 78, ImageConstants.logo),
      ),
      body: const Center(child: Text('Welcome to MyApp!')),
    );
  }
}
