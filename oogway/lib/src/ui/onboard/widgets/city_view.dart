import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/common/ui/device_padding.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_action_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_flow_controller.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';
import 'package:oogway/src/ui/widgets/text_field.dart';

class CityView extends ConsumerStatefulWidget {
  const CityView({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CityViewState();
}

class _CityViewState extends ConsumerState<CityView> {
  late final TextEditingController locationTextController;

  @override
  void initState() {
    locationTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final onboardFlowController = ref.watch(onboardFlowControllerProvider);

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
                  return const _AddressBottomSheetContent();
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
            ref.read(onboardAcionControllerProvider).submitCity();
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
}

class _AddressBottomSheetContent extends StatelessWidget {
  const _AddressBottomSheetContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            style: const TextStyle(
              color: OogwayColors.kPrimaryDarkColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            cursorColor: OogwayColors.kPrimaryTransparentDarkColor,
            textAlign: TextAlign.center,
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
        ],
      ),
    );
  }
}
