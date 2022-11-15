import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';

class OogwayFavoriteHeart extends StatelessWidget {
  const OogwayFavoriteHeart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.favorite_border_rounded,
      color: OogwayColors.kPrimaryCoralColor,
    );
  }
}
