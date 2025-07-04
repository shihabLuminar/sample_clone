import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sample_clone/core/constants/color_constants.dart';
import 'package:sample_clone/core/constants/image_constants.dart';
import 'package:sample_clone/core/themes/app_font_styles.dart';
import 'package:sample_clone/routes.dart';

import 'package:sample_clone/view/global_widgets/curstom_divider.dart';
import 'package:sample_clone/view/global_widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategroy = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel Section
            _homeCarouselSection(),
            SizedBox(height: 35),

            // new arrivals section
            _newArrivalsSection(),
            // brand partners Section
            brandPartnersSection(),
          ],
        ),
      ),
    );
  }

  Widget brandPartnersSection() {
    List<String> brandLogos = [
      ImageConstants.gucciBrand,
      ImageConstants.burberryBrand,

      ImageConstants.bossLogoBrand,
      ImageConstants.catierBrand,
      ImageConstants.pradaBrand,
      ImageConstants.tiffanyBrand,
    ];
    return Column(
      children: [
        CustomDivider(),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 30,
          runSpacing: 30,
          children: List.generate(
            brandLogos.length,
            (index) => Image.asset(
              width: 100,
              height: 80,
              fit: BoxFit.contain,
              brandLogos[index],
            ),
          ),
        ),
        CustomDivider(),
      ],
    );
  }

  Widget _newArrivalsSection() {
    List<String> newArrivalsCategories = [
      "All",
      "Apparal",
      "Dress",
      "Tshirt",
      "Bag",
    ];

    return Container(
      child: Column(
        children: [
          Text(
            "NEW ARRIVAL",
            style: AppFontStyles.tenorSans.copyWith(fontSize: 18),
          ),
          CustomDivider(),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(newArrivalsCategories.length, (index) {
                  return TextButton(
                    onPressed: () {
                      log(index.toString());
                      selectedCategroy = index;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Text(
                          newArrivalsCategories[index],
                          style: AppFontStyles.tenorSans.copyWith(
                            fontSize: 14,
                            color:
                                selectedCategroy == index
                                    ? ColorConstants.black
                                    : ColorConstants.mediumGrey,
                          ),
                        ),
                        SizedBox(height: 6),
                        if (selectedCategroy == index)
                          Transform.rotate(
                            angle: 180,
                            child: Container(
                              height: 6,
                              width: 6,
                              color: Colors.orange,
                            ),
                          ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              mainAxisExtent: 260,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder:
                (context, index) => Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        width: double.infinity,
                        fit: BoxFit.cover,
                        "https://images.pexels.com/photos/4456815/pexels-photo-4456815.jpeg",
                      ),
                    ),
                    SizedBox(height: 11),
                    Text(
                      textAlign: TextAlign.center,
                      "21WN reversible angora cardigan",
                      style: AppFontStyles.tenorSans.copyWith(fontSize: 12),
                    ),
                    Text(
                      "\$120",
                      style: AppFontStyles.tenorSans.copyWith(fontSize: 15),
                    ),
                  ],
                ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                "EXPLORE MORE",
                style: AppFontStyles.tenorSans.copyWith(fontSize: 18),
              ),
              Icon(Icons.arrow_forward_outlined),
            ],
          ),
          SizedBox(height: 50),
        ],
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
            "LUXURY\n    FASHION\n& ACCESSORIES",
            style: AppFontStyles.bodoniModa.copyWith(
              fontSize: 38,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: ColorConstants.darkGrey,
            ),
          ),
          SizedBox(height: 167),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.productsScreen);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "EXPLORE COLLECTION",
                style: AppFontStyles.tenorSans.copyWith(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
