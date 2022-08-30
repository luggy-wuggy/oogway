//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pass_fail_or_opt_out.g.dart';

class PassFailOrOptOut extends EnumClass {

  /// Enum for reporting of privacy tests within the accountability and transparency scoring system.
  @BuiltValueEnumConst(wireName: r'Pass')
  static const PassFailOrOptOut pass = _$pass;
  /// Enum for reporting of privacy tests within the accountability and transparency scoring system.
  @BuiltValueEnumConst(wireName: r'Fail')
  static const PassFailOrOptOut fail = _$fail;
  /// Enum for reporting of privacy tests within the accountability and transparency scoring system.
  @BuiltValueEnumConst(wireName: r'Opt-Out')
  static const PassFailOrOptOut optOut = _$optOut;

  static Serializer<PassFailOrOptOut> get serializer => _$passFailOrOptOutSerializer;

  const PassFailOrOptOut._(String name): super(name);

  static BuiltSet<PassFailOrOptOut> get values => _$values;
  static PassFailOrOptOut valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PassFailOrOptOutMixin = Object with _$PassFailOrOptOutMixin;

