import 'package:flutter/material.dart';
import 'package:sample_clone/core/constants/color_constants.dart';
import 'package:sample_clone/core/themes/app_font_styles.dart';
import 'package:sample_clone/view/global_widgets/custom_appbar.dart';

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
      body: Column(
        children: [
          SizedBox(height: 18),
          // filter section
          _filterSection(),
          SizedBox(height: 15),

          Expanded(
            child:
                isListView
                    ? ListView.separated(
                      itemBuilder:
                          (context, index) =>
                              Container(height: 100, color: Colors.red),
                      separatorBuilder:
                          (BuildContext context, int index) =>
                              SizedBox(height: 10),
                      itemCount: 100,
                    )
                    : GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder:
                          (context, index) =>
                              Container(height: 100, color: Colors.red),
                    ),
          ),
        ],
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
