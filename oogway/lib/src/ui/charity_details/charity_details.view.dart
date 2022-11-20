import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/ui/charity_details/widgets/details_category_list.dart';
import 'package:oogway/src/ui/charity_details/widgets/details_header.dart';
import 'package:oogway/src/ui/charity_details/widgets/details_mission.dart';
import 'package:oogway/src/ui/charity_details/widgets/details_ratings.dart';
import 'package:oogway/src/ui/charity_details/widgets/top_app_bar.dart';

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MapView extends StatelessWidget {
  const MapView({
    super.key,
    required this.charity,
  });

  final Charity charity;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 225,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: const GoogleMap(
            initialCameraPosition: _kGooglePlex,
            mapType: MapType.normal,
            myLocationButtonEnabled: false,
            scrollGesturesEnabled: false,
          ),
        ),
        Positioned(
          bottom: 12,
          right: 12,
          child: Text(
            "${charity.mailingAddress?.city ?? ""}, ${charity.mailingAddress?.stateOrProvince ?? ""}",
            style: const TextStyle(
              color: OogwayColors.kPrimaryDarkColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
