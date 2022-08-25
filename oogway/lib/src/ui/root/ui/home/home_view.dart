import 'package:flutter/material.dart';
import 'package:oogway/src/ui/root/ui/home/widgets/charity_card.dart';
import 'package:oogway/src/ui/root/ui/home/widgets/charity_list.dart';
import 'package:oogway/src/ui/root/ui/home/widgets/home_category_pills_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HomeCategoryList(),
        SizedBox(height: 20),
        HomeCharityList(),
      ],
    );
  }
}
