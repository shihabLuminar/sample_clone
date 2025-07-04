import 'package:flutter/material.dart';
import 'package:sample_clone/core/constants/image_constants.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu, size: 30),
      centerTitle: true,
      title: Image.asset(height: 32, width: 78, ImageConstants.logo),
      actions: [
        Icon(Icons.search, size: 30),
        SizedBox(width: 10),
        Icon(Icons.shopify_sharp, size: 30),
        SizedBox(width: 16),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
