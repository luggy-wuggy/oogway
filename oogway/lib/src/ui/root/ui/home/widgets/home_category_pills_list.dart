import 'package:flutter/material.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';
import 'package:oogway/src/ui/onboard/widgets/passion_pills.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const HomeCategoryPills(title: "For you", isSelected: true),
          const SizedBox(width: 5),
          ...Passion.values.map(
            (e) => Padding(
              padding: const EdgeInsets.only(right: 5),
              child: HomeCategoryPills(
                title: e.enumToString(),
                isSelected: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
