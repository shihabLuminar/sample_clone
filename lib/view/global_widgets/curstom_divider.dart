import 'package:flutter/material.dart';
import 'package:sample_clone/core/constants/color_constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125,
      height: 20,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Divider(height: 0, color: ColorConstants.darkGrey),
          ),
          Align(
            alignment: Alignment.center,

            child: Transform.rotate(
              angle: 180,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.darkGrey),
                  color: Colors.white,
                ),
                height: 10,
                width: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
