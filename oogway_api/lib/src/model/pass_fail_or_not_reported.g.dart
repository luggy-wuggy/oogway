// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pass_fail_or_not_reported.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PassFailOrNotReported _$pass = const PassFailOrNotReported._('pass');
const PassFailOrNotReported _$fail = const PassFailOrNotReported._('fail');
const PassFailOrNotReported _$notReported =
    const PassFailOrNotReported._('notReported');

PassFailOrNotReported _$valueOf(String name) {
  switch (name) {
    case 'pass':
      return _$pass;
    case 'fail':
      return _$fail;
    case 'notReported':
      return _$notReported;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PassFailOrNotReported> _$values =
    new BuiltSet<PassFailOrNotReported>(const <PassFailOrNotReported>[
  _$pass,
  _$fail,
  _$notReported,
]);

class _$PassFailOrNotReportedMeta {
  const _$PassFailOrNotReportedMeta();
  PassFailOrNotReported get pass => _$pass;
  PassFailOrNotReported get fail => _$fail;
  PassFailOrNotReported get notReported => _$notReported;
  PassFailOrNotReported valueOf(String name) => _$valueOf(name);
  BuiltSet<PassFailOrNotReported> get values => _$values;
}

abstract class _$PassFailOrNotReportedMixin {
  // ignore: non_constant_identifier_names
  _$PassFailOrNotReportedMeta get PassFailOrNotReported =>
      const _$PassFailOrNotReportedMeta();
}

Serializer<PassFailOrNotReported> _$passFailOrNotReportedSerializer =
    new _$PassFailOrNotReportedSerializer();

class _$PassFailOrNotReportedSerializer
    implements PrimitiveSerializer<PassFailOrNotReported> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pass': 'Pass',
    'fail': 'Fail',
    'notReported': 'Not Reported',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pass': 'pass',
    'Fail': 'fail',
    'Not Reported': 'notReported',
  };

  @override
  final Iterable<Type> types = const <Type>[PassFailOrNotReported];
  @override
  final String wireName = 'PassFailOrNotReported';

  @override
  Object serialize(Serializers serializers, PassFailOrNotReported object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PassFailOrNotReported deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PassFailOrNotReported.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
