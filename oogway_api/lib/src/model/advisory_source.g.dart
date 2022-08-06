// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisory_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdvisorySource extends AdvisorySource {
  @override
  final Date? datePublished;
  @override
  final Date? dateRemoved;
  @override
  final Date? dateModified;
  @override
  final String? publisher;
  @override
  final String? url;
  @override
  final String? summary;

  factory _$AdvisorySource([void Function(AdvisorySourceBuilder)? updates]) =>
      (new AdvisorySourceBuilder()..update(updates)).build();

  _$AdvisorySource._(
      {this.datePublished,
      this.dateRemoved,
      this.dateModified,
      this.publisher,
      this.url,
      this.summary})
      : super._();

  @override
  AdvisorySource rebuild(void Function(AdvisorySourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvisorySourceBuilder toBuilder() =>
      new AdvisorySourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvisorySource &&
        datePublished == other.datePublished &&
        dateRemoved == other.dateRemoved &&
        dateModified == other.dateModified &&
        publisher == other.publisher &&
        url == other.url &&
        summary == other.summary;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, datePublished.hashCode), dateRemoved.hashCode),
                    dateModified.hashCode),
                publisher.hashCode),
            url.hashCode),
        summary.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AdvisorySource')
          ..add('datePublished', datePublished)
          ..add('dateRemoved', dateRemoved)
          ..add('dateModified', dateModified)
          ..add('publisher', publisher)
          ..add('url', url)
          ..add('summary', summary))
        .toString();
  }
}

class AdvisorySourceBuilder
    implements Builder<AdvisorySource, AdvisorySourceBuilder> {
  _$AdvisorySource? _$v;

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

  String? _publisher;
  String? get publisher => _$this._publisher;
  set publisher(String? publisher) => _$this._publisher = publisher;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  AdvisorySourceBuilder() {
    AdvisorySource._defaults(this);
  }

  AdvisorySourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _datePublished = $v.datePublished;
      _dateRemoved = $v.dateRemoved;
      _dateModified = $v.dateModified;
      _publisher = $v.publisher;
      _url = $v.url;
      _summary = $v.summary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvisorySource other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvisorySource;
  }

  @override
  void update(void Function(AdvisorySourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AdvisorySource build() {
    final _$result = _$v ??
        new _$AdvisorySource._(
            datePublished: datePublished,
            dateRemoved: dateRemoved,
            dateModified: dateModified,
            publisher: publisher,
            url: url,
            summary: summary);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
