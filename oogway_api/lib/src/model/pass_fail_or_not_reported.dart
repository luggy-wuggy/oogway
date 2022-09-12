//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pass_fail_or_not_reported.g.dart';

class PassFailOrNotReported extends EnumClass {

  /// Enum for reporting of most accountability and transparency tests. The documentation for each metric should describe the criteria for a passing value.
  @BuiltValueEnumConst(wireName: r'Pass')
  static const PassFailOrNotReported pass = _$pass;
  /// Enum for reporting of most accountability and transparency tests. The documentation for each metric should describe the criteria for a passing value.
  @BuiltValueEnumConst(wireName: r'Fail')
  static const PassFailOrNotReported fail = _$fail;
  /// Enum for reporting of most accountability and transparency tests. The documentation for each metric should describe the criteria for a passing value.
  @BuiltValueEnumConst(wireName: r'Not Reported')
  static const PassFailOrNotReported notReported = _$notReported;

  static Serializer<PassFailOrNotReported> get serializer => _$passFailOrNotReportedSerializer;

  const PassFailOrNotReported._(String name): super(name);

  static BuiltSet<PassFailOrNotReported> get values => _$values;
  static PassFailOrNotReported valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PassFailOrNotReportedMixin = Object with _$PassFailOrNotReportedMixin;

