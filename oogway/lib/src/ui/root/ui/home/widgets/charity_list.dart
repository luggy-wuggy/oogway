import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'charity_card.dart';

class HomeCharityList extends StatelessWidget {
  const HomeCharityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          CharityCard(),
          SizedBox(height: 20),
          CharityCard(),
          SizedBox(height: 20),
          CharityCard(),
          SizedBox(height: 20),
          CharityCard(),
        ],
      ),
    );
  }
}
