//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deductibility_type.g.dart';

class DeductibilityType extends EnumClass {

  /// A value that summarizes deductibilty of donations to an Organization under a given IRS Classification.
  @BuiltValueEnumConst(wireName: r'Deductible')
  static const DeductibilityType deductible = _$deductible;
  /// A value that summarizes deductibilty of donations to an Organization under a given IRS Classification.
  @BuiltValueEnumConst(wireName: r'Not Deductible')
  static const DeductibilityType notDeductible = _$notDeductible;
  /// A value that summarizes deductibilty of donations to an Organization under a given IRS Classification.
  @BuiltValueEnumConst(wireName: r'Not Deductible, Generally')
  static const DeductibilityType notDeductibleCommaGenerally = _$notDeductibleCommaGenerally;

  static Serializer<DeductibilityType> get serializer => _$deductibilityTypeSerializer;

  const DeductibilityType._(String name): super(name);

  static BuiltSet<DeductibilityType> get values => _$values;
  static DeductibilityType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DeductibilityTypeMixin = Object with _$DeductibilityTypeMixin;

