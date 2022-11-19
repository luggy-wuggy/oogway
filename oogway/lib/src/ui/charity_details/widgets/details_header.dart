import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/common/extensions/charity_extension.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/ui/controllers/favicon_controller.dart';

class DetailsHeader extends ConsumerWidget {
  const DetailsHeader({
    super.key,
    required this.charity,
  });

  final Charity charity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final charityIcon = ref.watch(faviconProvider(charity.websiteURL ?? ""));

    return SizedBox(
      height: 62,
      child: Row(
        children: [
          Container(
            height: 62,
            width: 62,
            decoration: const BoxDecoration(
              color: OogwayColors.kPrimaryTransparentDarkColor,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: charityIcon.when(
              data: (data) {
                if (data == null || data.isEmpty) {
                  Icon(
                    charity.charityIcon,
                    color: OogwayColors.kPrimaryLightColor,
                  );
                }

                return Image.network(
                  data ?? "",
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(
                      charity.charityIcon,
                      color: OogwayColors.kPrimaryLightColor,
                    );
                  },
                );
              },
              error: (_, __) {
                return Icon(
                  charity.charityIcon,
                  color: OogwayColors.kPrimaryLightColor,
                );
              },
              loading: () {
                return Icon(
                  charity.charityIcon,
                  color: OogwayColors.kPrimaryLightColor,
                );
              },
            ),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: AutoSizeText(
              charity.charityName ?? "",
              style: const TextStyle(
                color: OogwayColors.kPrimaryLightColor,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
