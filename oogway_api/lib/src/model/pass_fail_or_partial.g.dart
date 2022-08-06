// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pass_fail_or_partial.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PassFailOrPartial _$pass = const PassFailOrPartial._('pass');
const PassFailOrPartial _$fail = const PassFailOrPartial._('fail');
const PassFailOrPartial _$partial = const PassFailOrPartial._('partial');
const PassFailOrPartial _$notReported =
    const PassFailOrPartial._('notReported');

PassFailOrPartial _$valueOf(String name) {
  switch (name) {
    case 'pass':
      return _$pass;
    case 'fail':
      return _$fail;
    case 'partial':
      return _$partial;
    case 'notReported':
      return _$notReported;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PassFailOrPartial> _$values =
    new BuiltSet<PassFailOrPartial>(const <PassFailOrPartial>[
  _$pass,
  _$fail,
  _$partial,
  _$notReported,
]);

class _$PassFailOrPartialMeta {
  const _$PassFailOrPartialMeta();
  PassFailOrPartial get pass => _$pass;
  PassFailOrPartial get fail => _$fail;
  PassFailOrPartial get partial => _$partial;
  PassFailOrPartial get notReported => _$notReported;
  PassFailOrPartial valueOf(String name) => _$valueOf(name);
  BuiltSet<PassFailOrPartial> get values => _$values;
}

abstract class _$PassFailOrPartialMixin {
  // ignore: non_constant_identifier_names
  _$PassFailOrPartialMeta get PassFailOrPartial =>
      const _$PassFailOrPartialMeta();
}

Serializer<PassFailOrPartial> _$passFailOrPartialSerializer =
    new _$PassFailOrPartialSerializer();

class _$PassFailOrPartialSerializer
    implements PrimitiveSerializer<PassFailOrPartial> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pass': 'Pass',
    'fail': 'Fail',
    'partial': 'Partial',
    'notReported': 'Not Reported',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pass': 'pass',
    'Fail': 'fail',
    'Partial': 'partial',
    'Not Reported': 'notReported',
  };

  @override
  final Iterable<Type> types = const <Type>[PassFailOrPartial];
  @override
  final String wireName = 'PassFailOrPartial';

  @override
  Object serialize(Serializers serializers, PassFailOrPartial object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PassFailOrPartial deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PassFailOrPartial.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
