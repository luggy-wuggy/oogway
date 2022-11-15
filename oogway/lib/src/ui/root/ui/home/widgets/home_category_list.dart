import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/common/extensions/string_extension.dart';
import 'package:oogway/src/ui/onboard/widgets/passion_pills.dart';
import 'package:oogway/src/ui/root/ui/home/controller/category_controller.dart';

class HomeCategoryList extends ConsumerWidget {
  const HomeCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryController = ref.watch(categoryControllerProvider);

    return Align(
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            ...categoryController.flowTypeList.map(
              (e) => Padding(
                padding: const EdgeInsets.only(right: 5),
                child: HomeCategoryPills(
                  title: e.enumToString(),
                  isSelected: e == categoryController.currentPage,
                  onTap: () {
                    ref.read(categoryControllerProvider).selectCategory(e);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
