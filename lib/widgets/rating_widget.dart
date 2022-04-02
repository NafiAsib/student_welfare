import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  final int rating;
  // final double width;
  // final double height;
  const RatingWidget({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Icon> stars = [];

    for (int i = 0; i < rating; i++) {
      stars.add(const Icon(
        FontAwesomeIcons.solidStar,
        size: 15,
        color: Color(0xFFFFB100),
      ));
    }
    for (int i = 0; i < (5 - rating); i++) {
      stars.add(Icon(
        FontAwesomeIcons.solidStar,
        size: 15,
        color: const Color(0xFFFFB100).withOpacity(0.3),
      ));
    }

    return SizedBox(
      width: 90,
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: stars,
      ),
    );
  }
}
