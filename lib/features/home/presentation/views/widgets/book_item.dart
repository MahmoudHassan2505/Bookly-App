import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 6.3,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AssetsData.bookItem,
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
