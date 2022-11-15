import 'package:flutter/material.dart';
import 'package:oogway/src/common/extensions/string_extension.dart';
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/ui/onboard/controllers/passion_controller.dart';

extension CharityExtension on Charity {
  int get charityId {
    try {
      var linkList = (cause?.charityNavigatorURL ?? "").split("&");

      var cgID = linkList.firstWhere(
        (element) {
          return element.contains("cgid=");
        },
      );

      var id = cgID.split("=");

      return int.parse(id.last);
    } on Exception {
      return 0;
    }
  }

  IconData get charityIcon {
    switch (charityId) {
      case 1:
        return Icons.pets;
      case 2:
        return Icons.palette;
      case 3:
        return Icons.groups;
      case 4:
        return Icons.school;
      case 5:
        return Icons.eco;
      case 6:
        return Icons.vaccines;
      case 7:
        return Icons.escalator_warning;
      case 8:
        return Icons.gavel;
      case 9:
        return Icons.language;
      case 10:
        return Icons.mosque;
      case 11:
        return Icons.biotech;
      default:
        return Icons.spa;
    }
  }

  String get charityCategoryName {
    final charityCategoryInt = charityId;
    final charityCategoryEnum = Passion.values[charityCategoryInt];
    return charityCategoryEnum.enumToString();
  }
}
