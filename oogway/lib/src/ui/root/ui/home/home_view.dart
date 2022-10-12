import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';
import 'package:oogway/src/ui/root/ui/home/controller/category_controller.dart';
import 'package:oogway/src/ui/root/ui/home/widgets/charity_list.dart';
import 'package:oogway/src/ui/root/ui/home/widgets/home_category_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final PageController pageController;
  late final List<Enum> flowTypeList;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    flowTypeList = Passion.values;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        catgoryControllerProvider.overrideWithProvider(
            ChangeNotifierProvider.autoDispose<CategoryFlowController>(
          (ref) {
            return CategoryFlowController(
              pageController: pageController,
              flowTypeList: flowTypeList,
            );
          },
        )),
      ],
      child: Column(
        children: [
          const HomeCategoryList(),
          const SizedBox(height: 20),
          HomeCharityList(pageController: pageController),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
