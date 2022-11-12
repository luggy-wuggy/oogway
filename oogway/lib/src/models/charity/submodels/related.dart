import 'package:freezed_annotation/freezed_annotation.dart';

part 'related.freezed.dart';
part 'related.g.dart';

@freezed
class Related with _$Related {
  factory Related({
    String? href,
  }) = _Related;

  factory Related.fromJson(Map<String, dynamic> json) =>
      _$RelatedFromJson(json);
}
