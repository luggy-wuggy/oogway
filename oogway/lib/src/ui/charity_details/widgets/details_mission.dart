import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/models/charity/charity.dart';

class DetailsMission extends StatefulWidget {
  const DetailsMission({
    super.key,
    required this.charity,
  });

  final Charity charity;

  @override
  State<DetailsMission> createState() => _DetailsMissionState();
}

class _DetailsMissionState extends State<DetailsMission> {
  bool isMissionExpanded = false;

  void toggleMissionExpansion() {
    setState(() {
      isMissionExpanded = !isMissionExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          child: AnimatedCrossFade(
            duration: const Duration(milliseconds: 200),
            crossFadeState: isMissionExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            firstChild: Text(
              widget.charity.mission ?? "",
              style: const TextStyle(
                color: OogwayColors.kPrimaryLightColor,
                fontSize: 15,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            secondChild: Text(
              widget.charity.mission ?? "",
              style: const TextStyle(
                color: OogwayColors.kPrimaryLightColor,
                fontSize: 15,
              ),
              maxLines: null,
              overflow: null,
            ),
            firstCurve: Curves.easeInOutCubicEmphasized,
            secondCurve: Curves.easeOutExpo,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                toggleMissionExpansion();
              },
              child: Text(
                isMissionExpanded ? "read less" : "read more",
                style: const TextStyle(
                  color: OogwayColors.kLightBlue,
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
