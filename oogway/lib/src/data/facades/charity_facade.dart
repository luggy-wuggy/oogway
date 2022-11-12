import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:oogway/src/models/charity/charity.dart';
import 'package:oogway/src/models/charity/charity_list.dart';
import 'package:riverpod/riverpod.dart';
import 'dart:developer';

class CharityNavigatorFacade {
  final client = http.Client();

  Future<List<Charity>> fetchCharities() async {
    var response = await client.get(CharityApiStrings.charityURI);
    if (response.statusCode == 200) {
      final jsonString = jsonDecode(response.body);
      final charityList = CharityList.fromJson(jsonString);

      return charityList.charities;
    } else {
      //show error message
      return [];
    }
  }

  Future<List<Charity>> fetchCharitiesByCategory(int i) async {
    var response = await client.get(CharityApiStrings().uriByCategory(i)!);
    if (response.statusCode == 200) {
      final jsonString = jsonDecode(response.body);

      print(jsonString);
      final charityList = CharityList.fromJson(jsonString);
      print(charityList.charities);

      return charityList.charities;
    } else {
      //show error message
      return [];
    }
  }

  Future<List<Charity>> fetchCharitiesBySearch(String s) async {
    if (s != null) {
      print(s);
      var response = await client.get(CharityApiStrings().uriBySearch(s)!);
      if (response.statusCode == 200) {
        final jsonString = jsonDecode(response.body);
        final charityList = CharityList.fromJson(jsonString);

        return charityList.charities;
      } else {
        //show error message
        return [];
      }
    } else {
      return [];
    }
  }
}

class CharityApiStrings {
  static var charityURI = Uri.parse(
      'https://api.data.charitynavigator.org/v2/Organizations?app_id=a71b11e3&app_key=14e84a0b33b1264879cf00974fe28b0c&rated=TRUE&pageSize=10');

  Uri? uriByCategory(int i) {
    try {
      if (i >= 1 && i <= 11) {
        return Uri.parse(
            'https://api.data.charitynavigator.org/v2/Organizations?app_id=a71b11e3&app_key=14e84a0b33b1264879cf00974fe28b0c&rated=TRUE&pageSize=10&categoryID=$i');
      } else if (i == 0) {
        return charityURI;
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
  }

  Uri? uriBySearch(String s) {
    try {
      return Uri.parse(
          'https://api.data.charitynavigator.org/v2/Organizations?app_id=a71b11e3&app_key=14e84a0b33b1264879cf00974fe28b0c&rated=TRUE&pageSize=10&search=$s&searchType=DEFAULT');
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
  }
}

final charityFacadeProvider = Provider<CharityNavigatorFacade>((ref) {
  return CharityNavigatorFacade();
});
