import 'package:flutter/material.dart';

class GridViewCard extends StatelessWidget {
  const GridViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Expanded(
              child: Image.network(
                width: double.infinity,
                fit: BoxFit.cover,
                "https://images.pexels.com/photos/6407632/pexels-photo-6407632.jpeg",
              ),
            ),
            Text("Title"),
            Text("description"),
            Text("\$130"),
          ],
        ),
      ),
    );
  }
}
