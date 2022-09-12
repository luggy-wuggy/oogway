//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pass_fail_or_partial.g.dart';

class PassFailOrPartial extends EnumClass {

  /// Enum for reporting of accountability and transparency tests that have a partial or equivocal value. Each test property should describe the criteria for passing and partial values.
  @BuiltValueEnumConst(wireName: r'Pass')
  static const PassFailOrPartial pass = _$pass;
  /// Enum for reporting of accountability and transparency tests that have a partial or equivocal value. Each test property should describe the criteria for passing and partial values.
  @BuiltValueEnumConst(wireName: r'Fail')
  static const PassFailOrPartial fail = _$fail;
  /// Enum for reporting of accountability and transparency tests that have a partial or equivocal value. Each test property should describe the criteria for passing and partial values.
  @BuiltValueEnumConst(wireName: r'Partial')
  static const PassFailOrPartial partial = _$partial;
  /// Enum for reporting of accountability and transparency tests that have a partial or equivocal value. Each test property should describe the criteria for passing and partial values.
  @BuiltValueEnumConst(wireName: r'Not Reported')
  static const PassFailOrPartial notReported = _$notReported;

  static Serializer<PassFailOrPartial> get serializer => _$passFailOrPartialSerializer;

  const PassFailOrPartial._(String name): super(name);

  static BuiltSet<PassFailOrPartial> get values => _$values;
  static PassFailOrPartial valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PassFailOrPartialMixin = Object with _$PassFailOrPartialMixin;

