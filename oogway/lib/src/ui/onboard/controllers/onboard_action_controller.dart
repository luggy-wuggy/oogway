import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/extensions/logger_extension.dart';

import 'package:oogway/src/domain/usecases/usecases.dart';
import 'package:oogway/src/models/google_places.dart';
import 'package:oogway/src/models/user.dart';
import 'package:oogway/src/ui/controllers/account_info_controller.dart';
import 'package:oogway/src/ui/controllers/page_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/address_search_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/onboard_flow_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';

class OnboardActionController extends ChangeNotifier with Logging {
  final Ref ref;

  OnboardActionController({required this.ref});

  final OogwayUser user = OogwayUser();

  late final SignInUseCase signInUseCase = ref.read(signInUseCaseProvider);
  late final FlowController onboardFlowController =
      ref.read(onboardFlowControllerProvider);

  late final PassionSelectionController passionSelectionController =
      ref.read(passionSelectionControllerProvider);

  late final AddressSearchController addressSearchController =
      ref.read(addressSearchControllerProvider);

  Future submitName({required String name}) async {
    user.name = name;
    logger.i("USER name submited as ${user.name}");
    onboardFlowController.nextPage();
  }

  void submitCity(PlaceDetail? place) {
    user.place?.placeID = place?.placeID;
    user.place?.city = place?.locality;
    user.place?.state = place?.administrativeAreaLevel1;
    user.place?.street = place?.route;
    user.place?.streetNumber = place?.streetNumber;
    user.place?.zipCode = place?.postalCode;
    notifyListeners();

    onboardFlowController.nextPage();
  }

  void submitPassions() {
    user.passions = passionSelectionController.selectedPassions;
    logger.i("Passions submited as ${user.passions}");

    onboardFlowController.nextPage();
  }

  void finishOnboard() async {
    passionSelectionController.refresh();
    addressSearchController.refresh();
    await signInUseCase.call(user);
  }
}

final onboardAcionControllerProvider =
    ChangeNotifierProvider<OnboardActionController>(
  (ref) {
    return OnboardActionController(ref: ref);
  },
);
