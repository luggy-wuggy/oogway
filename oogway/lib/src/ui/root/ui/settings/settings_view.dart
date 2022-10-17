import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/domain/usecases/account/sign_out_use_case.dart';
import 'package:oogway/src/ui/controllers/account_info_controller.dart';
import 'package:oogway/src/ui/root/controllers/index_controller.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(accountInfoProvider);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          account.when(
            data: (data) {
              return Text(
                data.name ?? "",
                style: const TextStyle(
                  color: OogwayColors.kPrimaryLightColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              );
            },
            error: (error, stackTrace) {
              return const Text(
                'Error',
                style: TextStyle(
                  color: OogwayColors.kPrimaryCoralColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              );
            },
            loading: () => const CircularProgressIndicator(),
          ),
          const SizedBox(height: 10),
          OogwayLongButton(
            title: "Log out",
            backgroundColor: OogwayColors.kPrimaryLightColor,
            pressedColor: OogwayColors.kPrimaryLightColor,
            childColor: OogwayColors.kPrimaryDarkColor,
            onPressed: () async {
              await ref.read(signOutUseCaseProvider).call();
              ref.refresh(bottomNavIndexProvider);
            },
          ),
        ],
      ),
    );
  }
}
