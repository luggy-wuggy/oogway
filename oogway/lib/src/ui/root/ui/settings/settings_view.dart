import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/domain/usecases/account/sign_out_use_case.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: OogwayLongButton(
        title: "Log out",
        backgroundColor: OogwayColors.kPrimaryLightColor,
        pressedColor: OogwayColors.kPrimaryLightColor,
        childColor: OogwayColors.kPrimaryDarkColor,
        onPressed: () => ref.read(signOutUseCaseProvider).call(),
      ),
    );
  }
}
