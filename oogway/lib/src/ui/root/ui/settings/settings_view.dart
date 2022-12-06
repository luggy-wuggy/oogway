import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/constants/ui.dart';
import 'package:oogway/src/domain/usecases/account/sign_out_use_case.dart';
import 'package:oogway/src/ui/controllers/account_info_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/controllers.dart';
import 'package:oogway/src/ui/onboard/widgets/widgets.dart';
import 'package:oogway/src/ui/root/controllers/index_controller.dart';
import 'package:oogway/src/ui/widgets/long_button.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(accountInfoProvider);

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            account.when(
              data: (data) {
                print(data.place.toString());

                return Expanded(
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Name',
                            style: TextStyle(
                              color: OogwayColors.kPrimaryLightColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            data.name ?? "",
                            style: const TextStyle(
                              color: OogwayColors.kPrimaryLightColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: OogwayColors.kPrimaryLightColor.withOpacity(0.4),
                        thickness: 1.4,
                        height: 48,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Location',
                            style: TextStyle(
                              color: OogwayColors.kPrimaryLightColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Martinez",
                            style: TextStyle(
                              color: OogwayColors.kPrimaryLightColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: OogwayColors.kPrimaryLightColor.withOpacity(0.4),
                        thickness: 1.4,
                        height: 48,
                      ),
                      const Text(
                        'Passions',
                        style: TextStyle(
                          color: OogwayColors.kPrimaryLightColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Wrap(
                        runSpacing: 10,
                        spacing: 5,
                        children: data.passions
                            .map(
                              (e) => PassionPills(
                                title: e.name,
                                pillColor:
                                    OogwayColors.kPrimaryTransparentDarkColor,
                                textColor: OogwayColors.kPrimaryLightColor,
                              ),
                            )
                            .toList(),
                      ),
                    ],
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
      ),
    );
  }
}
