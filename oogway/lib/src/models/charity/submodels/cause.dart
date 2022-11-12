import 'package:freezed_annotation/freezed_annotation.dart';

part 'cause.freezed.dart';
part 'cause.g.dart';

@freezed
class Cause with _$Cause {
  factory Cause({
    int? causeId,
    String? causeName,
    String? charityNavigatorUrl,
    String? image,
  }) = _Cause;

  factory Cause.fromJson(Map<String, dynamic> json) => _$CauseFromJson(json);
}
