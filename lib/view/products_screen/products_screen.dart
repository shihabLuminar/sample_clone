import 'package:flutter/material.dart';
import 'package:sample_clone/core/constants/color_constants.dart';
import 'package:sample_clone/core/themes/app_font_styles.dart';
import 'package:sample_clone/dummy_db.dart';
import 'package:sample_clone/routes.dart';
import 'package:sample_clone/view/global_widgets/custom_appbar.dart';
import 'package:sample_clone/view/products_screen/widgets/grid_view_card.dart';
import 'package:sample_clone/view/products_screen/widgets/list_view_card.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  bool isListView = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 18),
            // filter section
            _filterSection(),
            SizedBox(height: 15),

            // filter categories section
            Chip(
              label: Text("sdgf"),

              deleteIcon: Icon(Icons.close),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(height: 15),

            // products section
            _productsSection(),
          ],
        ),
      ),
    );
  }

  Expanded _productsSection() {
    return Expanded(
      child:
          isListView
              ? ListView.separated(
                itemBuilder:
                    (context, index) => ListViewCard(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.splashScreen);
                      },
                      name: DummyDb.products[index]["name"],
                      description: DummyDb.products[index]["descriptoin"],
                      imageUrl: DummyDb.products[index]["imageUrl"],
                      price: DummyDb.products[index]["price"],
                      isFavourite: DummyDb.products[index]["isFavourite"],
                      rating: DummyDb.products[index]["rating"],
                      sizeList: DummyDb.products[index]["size"],
                    ),
                separatorBuilder:
                    (BuildContext context, int index) => SizedBox(height: 10),
                itemCount: DummyDb.products.length,
              )
              : GridView.builder(
                itemCount: DummyDb.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 285,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => GridViewCard(),
              ),
    );
  }

  Widget _filterSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        spacing: 8,
        children: [
          Expanded(
            child: Text(
              "4500 APPAREL",
              style: AppFontStyles.tenorSans.copyWith(
                color: ColorConstants.black,
                fontSize: 14,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorConstants.lightGrey,
              borderRadius: BorderRadius.circular(33),
            ),
            child: DropdownButton(
              hint: Text("Select"),
              items: [DropdownMenuItem(child: Text("NEW"), value: "NEW")],
              onChanged: (value) {},
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isListView = !isListView;
              });
            },
            child: CircleAvatar(
              backgroundColor: ColorConstants.lightGrey,
              child: Icon(
                isListView ? Icons.list_sharp : Icons.grid_view_sharp,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: ColorConstants.lightGrey,

            child: Icon(Icons.filter_list_outlined),
          ),
        ],
      ),
    );
  }
}
