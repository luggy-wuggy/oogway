import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/domain/usecases/usecases.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';
import 'package:oogway/src/ui/root/ui/home/controller/category_controller.dart';
import 'package:oogway/swagger_generated_code/charity_navigator.swagger.dart';

import 'charity_card.dart';

class HomeCharityList extends ConsumerWidget {
  const HomeCharityList({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: PageView(
        controller: pageController,
        onPageChanged: (int i) {
          ref.read(catgoryControllerProvider).swipeCategory(Passion.values[i]);
        },
        children: Passion.values.map((e) => const _CharityList()).toList(),
      ),
    );
  }
}

class _CharityList extends ConsumerWidget {
  const _CharityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<OrganizationCollectionItem>?> charity =
        ref.watch(forYouCharityProvider);

    return charity.when(loading: () {
      return ListView(
        children: const [
          LoadingCharityCard(),
          SizedBox(height: 20),
          LoadingCharityCard(),
          SizedBox(height: 20),
          LoadingCharityCard(),
          SizedBox(height: 20),
          LoadingCharityCard(),
        ],
      );
    }, error: (error, stackTrace) {
      return const SizedBox.shrink();
    }, data: (data) {
      return ListView(
        children: const [
          CharityCard(),
          SizedBox(height: 20),
          CharityCard(),
          SizedBox(height: 20),
          CharityCard(),
          SizedBox(height: 20),
          CharityCard(),
        ],
      );
    });
  }
}

final forYouCharityProvider =
    FutureProvider.autoDispose<List<OrganizationCollectionItem>?>((ref) async {
  final getForCharityUseCase = ref.read(getOrganizationsUseCaseProvider);

  final list = await getForCharityUseCase.call();

  return list;
});
