// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_metrics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PerformanceMetrics extends PerformanceMetrics {
  @override
  final num? fundraisingEfficiency;
  @override
  final num? fundraisingExpensesRatio;
  @override
  final num? programExpensesGrowth;
  @override
  final num? programExpensesRatio;
  @override
  final num? administrationExpensesRatio;
  @override
  final num? liabilitiesToAssetsRatio;
  @override
  final num? workingCapitalRatio;
  @override
  final num? primaryRevenueGrowth;

  factory _$PerformanceMetrics(
          [void Function(PerformanceMetricsBuilder)? updates]) =>
      (new PerformanceMetricsBuilder()..update(updates))._build();

  _$PerformanceMetrics._(
      {this.fundraisingEfficiency,
      this.fundraisingExpensesRatio,
      this.programExpensesGrowth,
      this.programExpensesRatio,
      this.administrationExpensesRatio,
      this.liabilitiesToAssetsRatio,
      this.workingCapitalRatio,
      this.primaryRevenueGrowth})
      : super._();

  @override
  PerformanceMetrics rebuild(
          void Function(PerformanceMetricsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PerformanceMetricsBuilder toBuilder() =>
      new PerformanceMetricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PerformanceMetrics &&
        fundraisingEfficiency == other.fundraisingEfficiency &&
        fundraisingExpensesRatio == other.fundraisingExpensesRatio &&
        programExpensesGrowth == other.programExpensesGrowth &&
        programExpensesRatio == other.programExpensesRatio &&
        administrationExpensesRatio == other.administrationExpensesRatio &&
        liabilitiesToAssetsRatio == other.liabilitiesToAssetsRatio &&
        workingCapitalRatio == other.workingCapitalRatio &&
        primaryRevenueGrowth == other.primaryRevenueGrowth;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, fundraisingEfficiency.hashCode),
                                fundraisingExpensesRatio.hashCode),
                            programExpensesGrowth.hashCode),
                        programExpensesRatio.hashCode),
                    administrationExpensesRatio.hashCode),
                liabilitiesToAssetsRatio.hashCode),
            workingCapitalRatio.hashCode),
        primaryRevenueGrowth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PerformanceMetrics')
          ..add('fundraisingEfficiency', fundraisingEfficiency)
          ..add('fundraisingExpensesRatio', fundraisingExpensesRatio)
          ..add('programExpensesGrowth', programExpensesGrowth)
          ..add('programExpensesRatio', programExpensesRatio)
          ..add('administrationExpensesRatio', administrationExpensesRatio)
          ..add('liabilitiesToAssetsRatio', liabilitiesToAssetsRatio)
          ..add('workingCapitalRatio', workingCapitalRatio)
          ..add('primaryRevenueGrowth', primaryRevenueGrowth))
        .toString();
  }
}

class PerformanceMetricsBuilder
    implements Builder<PerformanceMetrics, PerformanceMetricsBuilder> {
  _$PerformanceMetrics? _$v;

  num? _fundraisingEfficiency;
  num? get fundraisingEfficiency => _$this._fundraisingEfficiency;
  set fundraisingEfficiency(num? fundraisingEfficiency) =>
      _$this._fundraisingEfficiency = fundraisingEfficiency;

  num? _fundraisingExpensesRatio;
  num? get fundraisingExpensesRatio => _$this._fundraisingExpensesRatio;
  set fundraisingExpensesRatio(num? fundraisingExpensesRatio) =>
      _$this._fundraisingExpensesRatio = fundraisingExpensesRatio;

  num? _programExpensesGrowth;
  num? get programExpensesGrowth => _$this._programExpensesGrowth;
  set programExpensesGrowth(num? programExpensesGrowth) =>
      _$this._programExpensesGrowth = programExpensesGrowth;

  num? _programExpensesRatio;
  num? get programExpensesRatio => _$this._programExpensesRatio;
  set programExpensesRatio(num? programExpensesRatio) =>
      _$this._programExpensesRatio = programExpensesRatio;

  num? _administrationExpensesRatio;
  num? get administrationExpensesRatio => _$this._administrationExpensesRatio;
  set administrationExpensesRatio(num? administrationExpensesRatio) =>
      _$this._administrationExpensesRatio = administrationExpensesRatio;

  num? _liabilitiesToAssetsRatio;
  num? get liabilitiesToAssetsRatio => _$this._liabilitiesToAssetsRatio;
  set liabilitiesToAssetsRatio(num? liabilitiesToAssetsRatio) =>
      _$this._liabilitiesToAssetsRatio = liabilitiesToAssetsRatio;

  num? _workingCapitalRatio;
  num? get workingCapitalRatio => _$this._workingCapitalRatio;
  set workingCapitalRatio(num? workingCapitalRatio) =>
      _$this._workingCapitalRatio = workingCapitalRatio;

  num? _primaryRevenueGrowth;
  num? get primaryRevenueGrowth => _$this._primaryRevenueGrowth;
  set primaryRevenueGrowth(num? primaryRevenueGrowth) =>
      _$this._primaryRevenueGrowth = primaryRevenueGrowth;

  PerformanceMetricsBuilder() {
    PerformanceMetrics._defaults(this);
  }

  PerformanceMetricsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fundraisingEfficiency = $v.fundraisingEfficiency;
      _fundraisingExpensesRatio = $v.fundraisingExpensesRatio;
      _programExpensesGrowth = $v.programExpensesGrowth;
      _programExpensesRatio = $v.programExpensesRatio;
      _administrationExpensesRatio = $v.administrationExpensesRatio;
      _liabilitiesToAssetsRatio = $v.liabilitiesToAssetsRatio;
      _workingCapitalRatio = $v.workingCapitalRatio;
      _primaryRevenueGrowth = $v.primaryRevenueGrowth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PerformanceMetrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PerformanceMetrics;
  }

  @override
  void update(void Function(PerformanceMetricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PerformanceMetrics build() => _build();

  _$PerformanceMetrics _build() {
    final _$result = _$v ??
        new _$PerformanceMetrics._(
            fundraisingEfficiency: fundraisingEfficiency,
            fundraisingExpensesRatio: fundraisingExpensesRatio,
            programExpensesGrowth: programExpensesGrowth,
            programExpensesRatio: programExpensesRatio,
            administrationExpensesRatio: administrationExpensesRatio,
            liabilitiesToAssetsRatio: liabilitiesToAssetsRatio,
            workingCapitalRatio: workingCapitalRatio,
            primaryRevenueGrowth: primaryRevenueGrowth);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
