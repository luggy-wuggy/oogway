//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'severity.g.dart';

class Severity extends EnumClass {

  /// Enumeration describing three levels of severity.
  @BuiltValueEnumConst(wireName: r'High')
  static const Severity high = _$high;
  /// Enumeration describing three levels of severity.
  @BuiltValueEnumConst(wireName: r'Moderate')
  static const Severity moderate = _$moderate;
  /// Enumeration describing three levels of severity.
  @BuiltValueEnumConst(wireName: r'Low')
  static const Severity low = _$low;

  static Serializer<Severity> get serializer => _$severitySerializer;

  const Severity._(String name): super(name);

  static BuiltSet<Severity> get values => _$values;
  static Severity valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SeverityMixin = Object with _$SeverityMixin;

