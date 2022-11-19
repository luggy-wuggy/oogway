import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/common/extensions/charity_extension.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/ui/onboard/widgets/passion_pills.dart';

class DetailsCategoryList extends StatelessWidget {
  const DetailsCategoryList({
    super.key,
    required this.charity,
  });

  final Charity charity;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          PassionPills(
            title: charity.charityCategoryName,
            pillColor: OogwayColors.kPrimaryTransparentDarkColor,
            textColor: OogwayColors.kPrimaryLightColor,
            titleFontSize: 15,
          ),
          const SizedBox(width: 8),
          PassionPills(
            title: charity.cause?.causeName ?? "",
            pillColor: OogwayColors.kPrimaryTransparentDarkColor,
            textColor: OogwayColors.kPrimaryLightColor,
            titleFontSize: 15,
          ),
        ],
      ),
    );
  }
}
