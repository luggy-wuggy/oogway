import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oogway/src/models/charity/charity.dart';

part 'charity_list.freezed.dart';
part 'charity_list.g.dart';

@freezed
class CharityList with _$CharityList {
  factory CharityList({
    @Default([]) List<Charity> charities,
  }) = _CharityList;

  factory CharityList.fromJson(Map<String, dynamic> json) =>
      _$CharityListFromJson(json);
}
