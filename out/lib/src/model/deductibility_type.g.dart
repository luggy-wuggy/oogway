// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deductibility_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeductibilityType _$deductible = const DeductibilityType._('deductible');
const DeductibilityType _$notDeductible =
    const DeductibilityType._('notDeductible');
const DeductibilityType _$notDeductibleCommaGenerally =
    const DeductibilityType._('notDeductibleCommaGenerally');

DeductibilityType _$valueOf(String name) {
  switch (name) {
    case 'deductible':
      return _$deductible;
    case 'notDeductible':
      return _$notDeductible;
    case 'notDeductibleCommaGenerally':
      return _$notDeductibleCommaGenerally;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DeductibilityType> _$values =
    new BuiltSet<DeductibilityType>(const <DeductibilityType>[
  _$deductible,
  _$notDeductible,
  _$notDeductibleCommaGenerally,
]);

class _$DeductibilityTypeMeta {
  const _$DeductibilityTypeMeta();
  DeductibilityType get deductible => _$deductible;
  DeductibilityType get notDeductible => _$notDeductible;
  DeductibilityType get notDeductibleCommaGenerally =>
      _$notDeductibleCommaGenerally;
  DeductibilityType valueOf(String name) => _$valueOf(name);
  BuiltSet<DeductibilityType> get values => _$values;
}

abstract class _$DeductibilityTypeMixin {
  // ignore: non_constant_identifier_names
  _$DeductibilityTypeMeta get DeductibilityType =>
      const _$DeductibilityTypeMeta();
}

Serializer<DeductibilityType> _$deductibilityTypeSerializer =
    new _$DeductibilityTypeSerializer();

class _$DeductibilityTypeSerializer
    implements PrimitiveSerializer<DeductibilityType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'deductible': 'Deductible',
    'notDeductible': 'Not Deductible',
    'notDeductibleCommaGenerally': 'Not Deductible, Generally',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Deductible': 'deductible',
    'Not Deductible': 'notDeductible',
    'Not Deductible, Generally': 'notDeductibleCommaGenerally',
  };

  @override
  final Iterable<Type> types = const <Type>[DeductibilityType];
  @override
  final String wireName = 'DeductibilityType';

  @override
  Object serialize(Serializers serializers, DeductibilityType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeductibilityType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeductibilityType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
