import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oogway/src/app_router.dart';
import 'package:oogway/src/ui/widgets/heart.dart';

import '../../onboard/widgets/widgets.dart';

class TopAppBar extends ConsumerWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        OogwayIconButton(
          onTap: () {
            ref.read(oogwayRouterProvider).pop();
          },
          icon: Icons.close,
        ),
        const Spacer(),
        OogwayFavoriteHeart(
          onTap: (bool isFavorited) async {},
        ),
      ],
    );
  }
}
