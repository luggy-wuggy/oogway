// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form990.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Form990 extends Form990 {
  @override
  final num? fundraisingExpenses;
  @override
  final num? administrativeExpenses;
  @override
  final num? programExpenses;
  @override
  final num? totalExpenses;
  @override
  final num? totalRevenue;
  @override
  final num? totalNetAssets;
  @override
  final num? totalContributions;
  @override
  final num? primaryRevenue;
  @override
  final num? otherRevenue;
  @override
  final num? ceoCompensationPercent;

  factory _$Form990([void Function(Form990Builder)? updates]) =>
      (new Form990Builder()..update(updates)).build();

  _$Form990._(
      {this.fundraisingExpenses,
      this.administrativeExpenses,
      this.programExpenses,
      this.totalExpenses,
      this.totalRevenue,
      this.totalNetAssets,
      this.totalContributions,
      this.primaryRevenue,
      this.otherRevenue,
      this.ceoCompensationPercent})
      : super._();

  @override
  Form990 rebuild(void Function(Form990Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Form990Builder toBuilder() => new Form990Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Form990 &&
        fundraisingExpenses == other.fundraisingExpenses &&
        administrativeExpenses == other.administrativeExpenses &&
        programExpenses == other.programExpenses &&
        totalExpenses == other.totalExpenses &&
        totalRevenue == other.totalRevenue &&
        totalNetAssets == other.totalNetAssets &&
        totalContributions == other.totalContributions &&
        primaryRevenue == other.primaryRevenue &&
        otherRevenue == other.otherRevenue &&
        ceoCompensationPercent == other.ceoCompensationPercent;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, fundraisingExpenses.hashCode),
                                        administrativeExpenses.hashCode),
                                    programExpenses.hashCode),
                                totalExpenses.hashCode),
                            totalRevenue.hashCode),
                        totalNetAssets.hashCode),
                    totalContributions.hashCode),
                primaryRevenue.hashCode),
            otherRevenue.hashCode),
        ceoCompensationPercent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Form990')
          ..add('fundraisingExpenses', fundraisingExpenses)
          ..add('administrativeExpenses', administrativeExpenses)
          ..add('programExpenses', programExpenses)
          ..add('totalExpenses', totalExpenses)
          ..add('totalRevenue', totalRevenue)
          ..add('totalNetAssets', totalNetAssets)
          ..add('totalContributions', totalContributions)
          ..add('primaryRevenue', primaryRevenue)
          ..add('otherRevenue', otherRevenue)
          ..add('ceoCompensationPercent', ceoCompensationPercent))
        .toString();
  }
}

class Form990Builder implements Builder<Form990, Form990Builder> {
  _$Form990? _$v;

  num? _fundraisingExpenses;
  num? get fundraisingExpenses => _$this._fundraisingExpenses;
  set fundraisingExpenses(num? fundraisingExpenses) =>
      _$this._fundraisingExpenses = fundraisingExpenses;

  num? _administrativeExpenses;
  num? get administrativeExpenses => _$this._administrativeExpenses;
  set administrativeExpenses(num? administrativeExpenses) =>
      _$this._administrativeExpenses = administrativeExpenses;

  num? _programExpenses;
  num? get programExpenses => _$this._programExpenses;
  set programExpenses(num? programExpenses) =>
      _$this._programExpenses = programExpenses;

  num? _totalExpenses;
  num? get totalExpenses => _$this._totalExpenses;
  set totalExpenses(num? totalExpenses) =>
      _$this._totalExpenses = totalExpenses;

  num? _totalRevenue;
  num? get totalRevenue => _$this._totalRevenue;
  set totalRevenue(num? totalRevenue) => _$this._totalRevenue = totalRevenue;

  num? _totalNetAssets;
  num? get totalNetAssets => _$this._totalNetAssets;
  set totalNetAssets(num? totalNetAssets) =>
      _$this._totalNetAssets = totalNetAssets;

  num? _totalContributions;
  num? get totalContributions => _$this._totalContributions;
  set totalContributions(num? totalContributions) =>
      _$this._totalContributions = totalContributions;

  num? _primaryRevenue;
  num? get primaryRevenue => _$this._primaryRevenue;
  set primaryRevenue(num? primaryRevenue) =>
      _$this._primaryRevenue = primaryRevenue;

  num? _otherRevenue;
  num? get otherRevenue => _$this._otherRevenue;
  set otherRevenue(num? otherRevenue) => _$this._otherRevenue = otherRevenue;

  num? _ceoCompensationPercent;
  num? get ceoCompensationPercent => _$this._ceoCompensationPercent;
  set ceoCompensationPercent(num? ceoCompensationPercent) =>
      _$this._ceoCompensationPercent = ceoCompensationPercent;

  Form990Builder() {
    Form990._defaults(this);
  }

  Form990Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fundraisingExpenses = $v.fundraisingExpenses;
      _administrativeExpenses = $v.administrativeExpenses;
      _programExpenses = $v.programExpenses;
      _totalExpenses = $v.totalExpenses;
      _totalRevenue = $v.totalRevenue;
      _totalNetAssets = $v.totalNetAssets;
      _totalContributions = $v.totalContributions;
      _primaryRevenue = $v.primaryRevenue;
      _otherRevenue = $v.otherRevenue;
      _ceoCompensationPercent = $v.ceoCompensationPercent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Form990 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Form990;
  }

  @override
  void update(void Function(Form990Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Form990 build() {
    final _$result = _$v ??
        new _$Form990._(
            fundraisingExpenses: fundraisingExpenses,
            administrativeExpenses: administrativeExpenses,
            programExpenses: programExpenses,
            totalExpenses: totalExpenses,
            totalRevenue: totalRevenue,
            totalNetAssets: totalNetAssets,
            totalContributions: totalContributions,
            primaryRevenue: primaryRevenue,
            otherRevenue: otherRevenue,
            ceoCompensationPercent: ceoCompensationPercent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
