import 'package:flutter/material.dart';
import 'package:sample_clone/core/themes/app_font_styles.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.sizeList,
    required this.isFavourite,
    required this.rating,
    this.onTap,
  });
  final String name;
  final String description;
  final String price;
  final String imageUrl;
  final List<String> sizeList;
  final bool isFavourite;
  final double rating;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            Image.network(imageUrl, height: 134, width: 100),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(description),
                  Text("\$ $price"),
                  Row(children: [Icon(Icons.star), Text("$rating Ratings")]),
                  Row(
                    spacing: 10,
                    children: [
                      Text("Size"),
                      Row(
                        spacing: 8,
                        children: List.generate(
                          sizeList.length,
                          (index) => CircleAvatar(
                            radius: 10,
                            child: Text(
                              sizeList[index],
                              style: AppFontStyles.tenorSans.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),

                      isFavourite == true
                          ? Icon(Icons.favorite)
                          : Icon(Icons.favorite_outline),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
