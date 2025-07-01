import 'package:flutter/material.dart';
import 'package:sample_clone/core/constants/image_constants.dart';
import 'package:sample_clone/core/themes/app_font_styles.dart';
import 'package:sample_clone/core/themes/app_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final statusBarHeight = MediaQuery.paddingOf(context).top;
    // AppBar appbar = AppBar(
    //   leading: Icon(Icons.menu, size: 30),
    //   centerTitle: true,
    //   title: Image.asset(height: 32, width: 78, ImageConstants.logo),
    //   actions: [
    //     Icon(Icons.search, size: 30),
    //     SizedBox(width: 10),
    //     Icon(Icons.shopify_sharp, size: 30),
    //     SizedBox(width: 16),
    //   ],
    // );
    // final appBarHeight = appbar.preferredSize.height;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, size: 30),
        centerTitle: true,
        title: Image.asset(height: 32, width: 78, ImageConstants.logo),
        actions: [
          Icon(Icons.search, size: 30),
          SizedBox(width: 10),
          Icon(Icons.shopify_sharp, size: 30),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel Section
            _homeCarouselSection(),
          ],
        ),
      ),
    );
  }

  Widget _homeCarouselSection() {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(ImageConstants.homeCarousel1),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Luxury\n    Fashion\n& Accessories",
            style: AppFontStyles.bodoniModa.copyWith(
              fontSize: 38,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Color(0xff333333),
            ),
          ),
          SizedBox(height: 167),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "Explore Collection",
              style: AppFontStyles.tenorSans.copyWith(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
