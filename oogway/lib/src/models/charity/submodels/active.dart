import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oogway/src/models/charity/submodels/rapid_links.dart';

part 'active.freezed.dart';
part 'active.g.dart';

@freezed
class Active with _$Active {
  factory Active({
    RapidLinks? rapidLinks,
  }) = _Active;

  factory Active.fromJson(Map<String, dynamic> json) => _$ActiveFromJson(json);
}
