import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/ui/controllers/account_info_controller.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';
import 'package:oogway/src/ui/root/ui/home/controller/category_controller.dart';
import 'package:oogway/src/ui/root/ui/home/widgets/charity_list.dart';
import 'package:oogway/src/ui/root/ui/home/widgets/home_category_list.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  ConsumerState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final account = ref.watch(accountInfoProvider);

    return account.when(
        data: (data) {
          return ProviderScope(
            overrides: [
              categoryControllerProvider.overrideWithProvider(
                ChangeNotifierProvider.autoDispose<CategoryFlowController>(
                  (ref) {
                    return CategoryFlowController(
                      ref: ref,
                      pageController: pageController,
                      flowTypeList: [Passion.forYou] + data.passions,
                    );
                  },
                ),
              ),
            ],
            child: Column(
              children: const [
                HomeCategoryList(),
                SizedBox(height: 20),
                HomeCharityList(),
              ],
            ),
          );
        },
        error: ((error, stackTrace) {
          return const Text('error');
        }),
        loading: () => const CircularProgressIndicator());
  }
}
