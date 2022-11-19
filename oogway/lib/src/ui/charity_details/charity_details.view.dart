import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/app_router.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/common/extensions/charity_extension.dart';
import 'package:oogway/src/common/extensions/double_extension.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/ui/charity_details/widgets/details_category_list.dart';
import 'package:oogway/src/ui/charity_details/widgets/details_header.dart';
import 'package:oogway/src/ui/charity_details/widgets/details_mission.dart';
import 'package:oogway/src/ui/charity_details/widgets/details_ratings.dart';
import 'package:oogway/src/ui/charity_details/widgets/top_app_bar.dart';
import 'package:oogway/src/ui/controllers/favicon_controller.dart';
import 'package:oogway/src/ui/onboard/widgets/widgets.dart';
import 'package:oogway/src/ui/widgets/heart.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CharityDetailsView extends ConsumerWidget {
  const CharityDetailsView({
    super.key,
    required this.charity,
  });

  final Charity charity;

  static const String routeName = 'charity-details';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: OogwayColors.kPrimaryDarkColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: TopAppBar(),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: DetailsHeader(charity: charity),
              ),
              const SizedBox(height: 24),
              DetailsCategoryList(charity: charity),
              const SizedBox(height: 24),
              DetailsMission(charity: charity),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: DetailsRatings(charity: charity),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
