// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'severity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Severity _$high = const Severity._('high');
const Severity _$moderate = const Severity._('moderate');
const Severity _$low = const Severity._('low');

Severity _$valueOf(String name) {
  switch (name) {
    case 'high':
      return _$high;
    case 'moderate':
      return _$moderate;
    case 'low':
      return _$low;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Severity> _$values = new BuiltSet<Severity>(const <Severity>[
  _$high,
  _$moderate,
  _$low,
]);

class _$SeverityMeta {
  const _$SeverityMeta();
  Severity get high => _$high;
  Severity get moderate => _$moderate;
  Severity get low => _$low;
  Severity valueOf(String name) => _$valueOf(name);
  BuiltSet<Severity> get values => _$values;
}

abstract class _$SeverityMixin {
  // ignore: non_constant_identifier_names
  _$SeverityMeta get Severity => const _$SeverityMeta();
}

Serializer<Severity> _$severitySerializer = new _$SeveritySerializer();

class _$SeveritySerializer implements PrimitiveSerializer<Severity> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'high': 'High',
    'moderate': 'Moderate',
    'low': 'Low',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'High': 'high',
    'Moderate': 'moderate',
    'Low': 'low',
  };

  @override
  final Iterable<Type> types = const <Type>[Severity];
  @override
  final String wireName = 'Severity';

  @override
  Object serialize(Serializers serializers, Severity object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Severity deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Severity.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
