import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/domain/usecases/charity/get_charity_lat_lng_use_case.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/ui/charity_details/widgets/widgets.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
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
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: MapView(charity: charity),
                ),
                const SizedBox(height: 24),
                Align(
                  alignment: Alignment.center,
                  child: DonateButton(charity: charity),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DonateButton extends ConsumerStatefulWidget {
  const DonateButton({
    super.key,
    required this.charity,
  });

  final Charity charity;

  @override
  ConsumerState<DonateButton> createState() => _DonateButtonState();
}

class _DonateButtonState extends ConsumerState<DonateButton> {
  late Uri charityWebsite;

  @override
  void initState() {
    super.initState();
    charityWebsite = Uri.parse(widget.charity.websiteURL ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return OogwayLongButton(
      backgroundColor: OogwayColors.kPrimaryLightColor,
      pressedColor: OogwayColors.kPrimaryLightColor,
      childColor: OogwayColors.kPrimaryDarkColor,
      title: "Donate now",
      onPressed: () async {
        if (!await launchUrl(charityWebsite)) {
          throw 'Could not launch $charityWebsite';
        }
      },
    );
  }
}
