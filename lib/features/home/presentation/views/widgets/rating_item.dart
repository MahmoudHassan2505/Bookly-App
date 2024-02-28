import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 16,
        ),
        SizedBox(
          width: 5,
        ),
        Text('4.9', style: Styles.TextStyle15stock),
        SizedBox(
          width: 5,
        ),
        Text(
          '(2356)',
          style: Styles.TextStyle12,
        ),
      ],
    );
  }
}
