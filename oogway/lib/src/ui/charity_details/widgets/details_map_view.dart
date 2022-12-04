import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/domain/usecases/charity/get_charity_lat_lng_use_case.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/models/google_places.dart';
import 'package:shimmer/shimmer.dart';

class MapView extends ConsumerStatefulWidget {
  const MapView({
    super.key,
    required this.charity,
  });

  final Charity charity;

  @override
  ConsumerState<MapView> createState() => _MapViewState();
}

class _MapViewState extends ConsumerState<MapView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final charityLatLng = ref.watch(charityLatLngProvider(widget.charity));

    return charityLatLng.when(
      data: (data) {
        final cameraPosition = CameraPosition(
          target: LatLng(data?.lat ?? 0, data?.lng ?? 0),
          zoom: 14.7,
        );

        return Stack(
          children: [
            Container(
              width: double.infinity,
              height: 225,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: GoogleMap(
                initialCameraPosition: cameraPosition,
                markers: {
                  Marker(
                    markerId: MarkerId(
                      widget.charity.charityName ?? "charity name",
                    ),
                    position: LatLng(data?.lat ?? 0, data?.lng ?? 0),
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueCyan),
                  )
                },
                mapType: MapType.normal,
                myLocationButtonEnabled: false,
                scrollGesturesEnabled: true,
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                  Factory<OneSequenceGestureRecognizer>(
                    () => EagerGestureRecognizer(),
                  ),
                },
              ),
            ),
            Positioned(
              bottom: 12,
              right: 12,
              child: Text(
                "${widget.charity.mailingAddress?.city ?? ""}, ${widget.charity.mailingAddress?.stateOrProvince ?? ""}",
                style: const TextStyle(
                  color: OogwayColors.kPrimaryDarkColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        );
      },
      error: (error, stackTrace) {
        return const CircularProgressIndicator();
      },
      loading: () {
        return Shimmer.fromColors(
          period: const Duration(milliseconds: 1100),
          baseColor: OogwayColors.kPrimaryTransparentDarkColor,
          highlightColor: OogwayColors.kPrimaryDarkColor,
          child: Container(
            height: 225,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: OogwayColors.kPrimaryTransparentDarkColor,
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
          ),
        );
      },
    );
  }
}

final charityLatLngProvider =
    FutureProvider.family<LatLngPlaces?, Charity>((ref, charity) async {
  final charityLatLang = ref.read(getCharityLatLngUseCaseProvider);

  return await charityLatLang.call(charity);
});
