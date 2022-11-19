import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/models/charity/charity.dart';

class DetailsMission extends StatelessWidget {
  const DetailsMission({
    super.key,
    required this.charity,
  });

  final Charity charity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Mission",
            style: TextStyle(
              color: OogwayColors.kPrimaryLightColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            charity.mission ?? "",
            style: const TextStyle(
              color: OogwayColors.kPrimaryLightColor,
              fontSize: 15,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "read more",
              style: TextStyle(
                color: OogwayColors.kLightBlue,
                fontSize: 12,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
