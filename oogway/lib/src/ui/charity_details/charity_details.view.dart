import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/models/charity/charity.dart';

class CharityDetailsView extends StatelessWidget {
  const CharityDetailsView({
    super.key,
    required this.charity,
  });

  final Charity charity;

  static const String routeName = 'charity-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OogwayColors.kPrimaryDarkColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'CHARITY DETAILS',
              style: TextStyle(
                color: OogwayColors.kPrimaryLightColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '${charity.charityName}',
              style: const TextStyle(
                color: OogwayColors.kPrimaryLightColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
