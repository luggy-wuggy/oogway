import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/domain/usecases/usecases.dart';
import 'package:oogway/src/models/charity.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';
import 'package:oogway/src/ui/root/ui/home/controller/category_controller.dart';

import 'charity_card.dart';

class HomeCharityList extends ConsumerWidget {
  const HomeCharityList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryController = ref.watch(categoryControllerProvider);

    return Expanded(
      child: PageView(
        controller: categoryController.pageController,
        onPageChanged: (int i) {
          ref
              .read(categoryControllerProvider)
              .swipeCategory(categoryController.flowTypeList[i]);
        },
        children: categoryController.flowTypeList
            .map((e) => const _CharityList())
            .toList(),
      ),
    );
  }
}

class _CharityList extends ConsumerWidget {
  const _CharityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Charity>?> charity = ref.watch(forYouCharityProvider);

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
      return ListView.builder(
        itemCount: data?.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CharityCard(
                charity: data![index],
              ),
              const SizedBox(height: 20),
            ],
          );
        },
      );
    });
  }
}

final forYouCharityProvider =
    FutureProvider.autoDispose<List<Charity>?>((ref) async {
  final getForCharityUseCase = ref.read(getOrganizationsUseCaseProvider);

  final list = await getForCharityUseCase.call();

  return list;
});
