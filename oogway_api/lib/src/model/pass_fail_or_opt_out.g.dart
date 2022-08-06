// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pass_fail_or_opt_out.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PassFailOrOptOut _$pass = const PassFailOrOptOut._('pass');
const PassFailOrOptOut _$fail = const PassFailOrOptOut._('fail');
const PassFailOrOptOut _$optOut = const PassFailOrOptOut._('optOut');

PassFailOrOptOut _$valueOf(String name) {
  switch (name) {
    case 'pass':
      return _$pass;
    case 'fail':
      return _$fail;
    case 'optOut':
      return _$optOut;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PassFailOrOptOut> _$values =
    new BuiltSet<PassFailOrOptOut>(const <PassFailOrOptOut>[
  _$pass,
  _$fail,
  _$optOut,
]);

class _$PassFailOrOptOutMeta {
  const _$PassFailOrOptOutMeta();
  PassFailOrOptOut get pass => _$pass;
  PassFailOrOptOut get fail => _$fail;
  PassFailOrOptOut get optOut => _$optOut;
  PassFailOrOptOut valueOf(String name) => _$valueOf(name);
  BuiltSet<PassFailOrOptOut> get values => _$values;
}

abstract class _$PassFailOrOptOutMixin {
  // ignore: non_constant_identifier_names
  _$PassFailOrOptOutMeta get PassFailOrOptOut => const _$PassFailOrOptOutMeta();
}

Serializer<PassFailOrOptOut> _$passFailOrOptOutSerializer =
    new _$PassFailOrOptOutSerializer();

class _$PassFailOrOptOutSerializer
    implements PrimitiveSerializer<PassFailOrOptOut> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pass': 'Pass',
    'fail': 'Fail',
    'optOut': 'Opt-Out',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pass': 'pass',
    'Fail': 'fail',
    'Opt-Out': 'optOut',
  };

  @override
  final Iterable<Type> types = const <Type>[PassFailOrOptOut];
  @override
  final String wireName = 'PassFailOrOptOut';

  @override
  Object serialize(Serializers serializers, PassFailOrOptOut object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PassFailOrOptOut deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PassFailOrOptOut.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
