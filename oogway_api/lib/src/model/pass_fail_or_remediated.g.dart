// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pass_fail_or_remediated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PassFailOrRemediated _$pass = const PassFailOrRemediated._('pass');
const PassFailOrRemediated _$fail = const PassFailOrRemediated._('fail');
const PassFailOrRemediated _$remediated =
    const PassFailOrRemediated._('remediated');
const PassFailOrRemediated _$notReported =
    const PassFailOrRemediated._('notReported');

PassFailOrRemediated _$valueOf(String name) {
  switch (name) {
    case 'pass':
      return _$pass;
    case 'fail':
      return _$fail;
    case 'remediated':
      return _$remediated;
    case 'notReported':
      return _$notReported;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PassFailOrRemediated> _$values =
    new BuiltSet<PassFailOrRemediated>(const <PassFailOrRemediated>[
  _$pass,
  _$fail,
  _$remediated,
  _$notReported,
]);

class _$PassFailOrRemediatedMeta {
  const _$PassFailOrRemediatedMeta();
  PassFailOrRemediated get pass => _$pass;
  PassFailOrRemediated get fail => _$fail;
  PassFailOrRemediated get remediated => _$remediated;
  PassFailOrRemediated get notReported => _$notReported;
  PassFailOrRemediated valueOf(String name) => _$valueOf(name);
  BuiltSet<PassFailOrRemediated> get values => _$values;
}

abstract class _$PassFailOrRemediatedMixin {
  // ignore: non_constant_identifier_names
  _$PassFailOrRemediatedMeta get PassFailOrRemediated =>
      const _$PassFailOrRemediatedMeta();
}

Serializer<PassFailOrRemediated> _$passFailOrRemediatedSerializer =
    new _$PassFailOrRemediatedSerializer();

class _$PassFailOrRemediatedSerializer
    implements PrimitiveSerializer<PassFailOrRemediated> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pass': 'Pass',
    'fail': 'Fail',
    'remediated': 'Remediated',
    'notReported': 'Not Reported',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pass': 'pass',
    'Fail': 'fail',
    'Remediated': 'remediated',
    'Not Reported': 'notReported',
  };

  @override
  final Iterable<Type> types = const <Type>[PassFailOrRemediated];
  @override
  final String wireName = 'PassFailOrRemediated';

  @override
  Object serialize(Serializers serializers, PassFailOrRemediated object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PassFailOrRemediated deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PassFailOrRemediated.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
