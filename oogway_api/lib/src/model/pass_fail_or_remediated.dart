//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pass_fail_or_remediated.g.dart';

class PassFailOrRemediated extends EnumClass {

  /// Enum for reporting of the material diversion of assets test, and potentially for similar tests, within the accountability and transparency scoring system.
  @BuiltValueEnumConst(wireName: r'Pass')
  static const PassFailOrRemediated pass = _$pass;
  /// Enum for reporting of the material diversion of assets test, and potentially for similar tests, within the accountability and transparency scoring system.
  @BuiltValueEnumConst(wireName: r'Fail')
  static const PassFailOrRemediated fail = _$fail;
  /// Enum for reporting of the material diversion of assets test, and potentially for similar tests, within the accountability and transparency scoring system.
  @BuiltValueEnumConst(wireName: r'Remediated')
  static const PassFailOrRemediated remediated = _$remediated;
  /// Enum for reporting of the material diversion of assets test, and potentially for similar tests, within the accountability and transparency scoring system.
  @BuiltValueEnumConst(wireName: r'Not Reported')
  static const PassFailOrRemediated notReported = _$notReported;

  static Serializer<PassFailOrRemediated> get serializer => _$passFailOrRemediatedSerializer;

  const PassFailOrRemediated._(String name): super(name);

  static BuiltSet<PassFailOrRemediated> get values => _$values;
  static PassFailOrRemediated valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PassFailOrRemediatedMixin = Object with _$PassFailOrRemediatedMixin;

