import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oogway/src/models/charity/submodels/related.dart';

part 'rapid_links.freezed.dart';
part 'rapid_links.g.dart';

@freezed
class RapidLinks with _$RapidLinks {
  factory RapidLinks({
    Related? related,
  }) = _RapidLinks;

  factory RapidLinks.fromJson(Map<String, dynamic> json) =>
      _$RapidLinksFromJson(json);
}
