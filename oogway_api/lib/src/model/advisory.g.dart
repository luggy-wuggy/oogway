// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisory.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Advisory extends Advisory {
  @override
  final String? advisoryID;
  @override
  final Severity? severity;
  @override
  final Date? datePublished;
  @override
  final Date? dateRemoved;
  @override
  final Date? dateModified;
  @override
  final OrganizationLink? organization;
  @override
  final BuiltList<AdvisorySource> sources;

  factory _$Advisory([void Function(AdvisoryBuilder)? updates]) =>
      (new AdvisoryBuilder()..update(updates)).build();

  _$Advisory._(
      {this.advisoryID,
      this.severity,
      this.datePublished,
      this.dateRemoved,
      this.dateModified,
      this.organization,
      required this.sources})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(sources, 'Advisory', 'sources');
  }

  @override
  Advisory rebuild(void Function(AdvisoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvisoryBuilder toBuilder() => new AdvisoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Advisory &&
        advisoryID == other.advisoryID &&
        severity == other.severity &&
        datePublished == other.datePublished &&
        dateRemoved == other.dateRemoved &&
        dateModified == other.dateModified &&
        organization == other.organization &&
        sources == other.sources;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, advisoryID.hashCode), severity.hashCode),
                        datePublished.hashCode),
                    dateRemoved.hashCode),
                dateModified.hashCode),
            organization.hashCode),
        sources.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Advisory')
          ..add('advisoryID', advisoryID)
          ..add('severity', severity)
          ..add('datePublished', datePublished)
          ..add('dateRemoved', dateRemoved)
          ..add('dateModified', dateModified)
          ..add('organization', organization)
          ..add('sources', sources))
        .toString();
  }
}

class AdvisoryBuilder implements Builder<Advisory, AdvisoryBuilder> {
  _$Advisory? _$v;

  String? _advisoryID;
  String? get advisoryID => _$this._advisoryID;
  set advisoryID(String? advisoryID) => _$this._advisoryID = advisoryID;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  Date? _datePublished;
  Date? get datePublished => _$this._datePublished;
  set datePublished(Date? datePublished) =>
      _$this._datePublished = datePublished;

  Date? _dateRemoved;
  Date? get dateRemoved => _$this._dateRemoved;
  set dateRemoved(Date? dateRemoved) => _$this._dateRemoved = dateRemoved;

  Date? _dateModified;
  Date? get dateModified => _$this._dateModified;
  set dateModified(Date? dateModified) => _$this._dateModified = dateModified;

  OrganizationLinkBuilder? _organization;
  OrganizationLinkBuilder get organization =>
      _$this._organization ??= new OrganizationLinkBuilder();
  set organization(OrganizationLinkBuilder? organization) =>
      _$this._organization = organization;

  ListBuilder<AdvisorySource>? _sources;
  ListBuilder<AdvisorySource> get sources =>
      _$this._sources ??= new ListBuilder<AdvisorySource>();
  set sources(ListBuilder<AdvisorySource>? sources) =>
      _$this._sources = sources;

  AdvisoryBuilder() {
    Advisory._defaults(this);
  }

  AdvisoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _advisoryID = $v.advisoryID;
      _severity = $v.severity;
      _datePublished = $v.datePublished;
      _dateRemoved = $v.dateRemoved;
      _dateModified = $v.dateModified;
      _organization = $v.organization?.toBuilder();
      _sources = $v.sources.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Advisory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Advisory;
  }

  @override
  void update(void Function(AdvisoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Advisory build() {
    _$Advisory _$result;
    try {
      _$result = _$v ??
          new _$Advisory._(
              advisoryID: advisoryID,
              severity: severity,
              datePublished: datePublished,
              dateRemoved: dateRemoved,
              dateModified: dateModified,
              organization: _organization?.build(),
              sources: sources.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organization';
        _organization?.build();
        _$failedField = 'sources';
        sources.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Advisory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
