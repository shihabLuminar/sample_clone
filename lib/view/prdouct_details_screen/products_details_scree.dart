import 'package:flutter/material.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(body: Center(child: Text(index.toString())));
  }
}
