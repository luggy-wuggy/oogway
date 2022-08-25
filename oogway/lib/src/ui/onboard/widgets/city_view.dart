import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/common/ui/device_padding.dart';
import 'package:oogway/src/models/google_places.dart';
import 'package:oogway/src/ui/onboard/controllers/address_search_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_action_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_flow_controller.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';
import 'package:oogway/src/ui/widgets/text_field.dart';

class CityView extends ConsumerStatefulWidget {
  const CityView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CityViewState();
}

class _CityViewState extends ConsumerState<CityView>
    with AutomaticKeepAliveClientMixin {
  late final TextEditingController locationTextController;

  @override
  void initState() {
    locationTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 3),
        const Text(
          "Let’s find the right charity.\nWhere do you live?",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: OogwayColors.kPrimaryLightColor,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(flex: 2),
        OogwayTextField(
          hintText: "City or zip code",
          textEditingController: locationTextController,
          onTap: () async {
            await showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                isScrollControlled: true,
                backgroundColor: OogwayColors.kPrimaryLightColor,
                builder: (context) {
                  return _AddressBottomSheetContent(
                    onSelect: (PlaceSuggestion placeSuggestion) {
                      locationTextController.text = placeSuggestion.description;
                    },
                  );
                });
          },
        ),
        const SizedBox(height: 12),
        const Spacer(flex: 4),
        OogwayLongButton(
          title: "Continue",
          backgroundColor: OogwayColors.kPrimaryLightColor,
          pressedColor: OogwayColors.kPrimaryLightColor,
          childColor: OogwayColors.kPrimaryDarkColor,
          onPressed: () async {
            final placeDetail =
                ref.read(addressSearchControllerProvider).selectedAddress;
            ref.read(onboardAcionControllerProvider).submitCity(placeDetail);
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    locationTextController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}

class _AddressBottomSheetContent extends ConsumerWidget {
  const _AddressBottomSheetContent({
    Key? key,
    required this.onSelect,
  }) : super(key: key);

  final Function(PlaceSuggestion placeSuggestion)? onSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressSearchController = ref.watch(addressSearchControllerProvider);

    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      height: size.height - OogwayDevicePadding.top,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Address search',
            style: TextStyle(
              color: OogwayColors.kPrimaryDarkColor,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            onChanged: (value) {
              ref
                  .read(addressSearchControllerProvider)
                  .getAddressSuggestions(address: value);
            },
            style: const TextStyle(
              color: OogwayColors.kPrimaryDarkColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            cursorColor: OogwayColors.kPrimaryTransparentDarkColor,
            textAlign: TextAlign.left,
            autofocus: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: OogwayColors.kPrimaryDarkColor,
              ),
              suffixIcon: const Icon(
                Icons.search,
                color: OogwayColors.kPrimaryLightColor,
              ),
              hintText: "City, zip code, or state",
              hintStyle: TextStyle(
                color:
                    OogwayColors.kPrimaryTransparentDarkColor.withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              contentPadding: const EdgeInsets.all(10),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: OogwayColors.kPrimaryTransparentDarkColor,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: OogwayColors.kPrimaryTransparentDarkColor,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: OogwayColors.kPrimaryTransparentDarkColor,
                  width: 1,
                ),
              ),
            ),
          ),
          addressSearchController.suggestions.isEmpty
              ? const SizedBox(height: 48)
              : const SizedBox.shrink(),
          addressSearchController.suggestions.isEmpty
              ? Center(
                  child: Text(
                    "Start typing and we'll try\nto complete the rest",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: OogwayColors.kPrimaryTransparentDarkColor
                          .withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: addressSearchController.suggestions.length,
                    itemBuilder: (context, index) {
                      var suggestion =
                          addressSearchController.suggestions[index];

                      return Column(
                        children: [
                          addressSearchController.suggestions
                                      .indexOf(suggestion) !=
                                  0
                              ? const Divider(
                                  height: 1,
                                  thickness: 1,
                                )
                              : const SizedBox.shrink(),
                          ListTile(
                            onTap: () async {
                              await ref
                                  .read(addressSearchControllerProvider)
                                  .getAddressDetails(
                                      placeId: suggestion.placeId);

                              await onSelect?.call(suggestion);

                              Navigator.of(context).pop();
                            },
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 16),
                            title: Text(
                              suggestion.mainText,
                              style: const TextStyle(
                                color: OogwayColors.kPrimaryDarkColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(
                              suggestion.secondaryText,
                              style: TextStyle(
                                color: OogwayColors.kPrimaryTransparentDarkColor
                                    .withOpacity(0.7),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            minVerticalPadding: 8,
                            horizontalTitleGap: 20,
                          ),
                        ],
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
