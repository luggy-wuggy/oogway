import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';
import 'package:oogway/src/ui/root/ui/home/controller/category_controller.dart';

import 'charity_card.dart';

class HomeCharityList extends ConsumerWidget {
  const HomeCharityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryController = ref.watch(catgoryControllerProvider);

    return Expanded(
      child: PageView(
        controller: categoryController.pageController,
        onPageChanged: (int i) {
          ref.read(catgoryControllerProvider).swipeCategory(Passion.values[i]);
        },
        children: categoryController.flowTypeList
            .map((e) => const _CharityList())
            .toList(),
      ),
    );
  }
}

class _CharityList extends StatelessWidget {
  const _CharityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}
