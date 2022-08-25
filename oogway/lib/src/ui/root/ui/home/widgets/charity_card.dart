import 'package:flutter/material.dart';
import 'package:oogway/src/common/constants/ui.dart';

class CharityCard extends StatelessWidget {
  const CharityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: OogwayColors.kPrimaryTransparentDarkColor,
              width: 3,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    decoration: const BoxDecoration(
                      color: OogwayColors.kPrimaryTransparentDarkColor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: const Icon(
                      Icons.palette,
                      color: OogwayColors.kPrimaryLightColor,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Redwood Food Empire",
                        style: TextStyle(
                          color: OogwayColors.kPrimaryLightColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Santa Rosa, CA",
                        style: TextStyle(
                          color: OogwayColors.kPrimaryLightColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    decoration: const BoxDecoration(
                      color: OogwayColors.kPrimaryTransparentDarkColor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "C-",
                      style: TextStyle(
                        color: OogwayColors.kPrimaryLightColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Flexible(
                    child: Text(
                      "We are volunteer organization that provides fresh and healthy meals for over 1,500 people in sonoma county every day.",
                      style: TextStyle(
                        color: OogwayColors.kPrimaryLightColor,
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.favorite_border_rounded,
                  color: OogwayColors.kPrimaryCoralColor,
                ),
              )
            ],
          )),
    );
  }
}
