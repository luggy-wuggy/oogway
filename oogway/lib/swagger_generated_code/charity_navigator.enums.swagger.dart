import 'package:json_annotation/json_annotation.dart';

enum DeductibilityType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Deductible')
  deductible,
  @JsonValue('Not Deductible')
  notDeductible,
  @JsonValue('Not Deductible, Generally')
  notDeductibleGenerally
}

const $DeductibilityTypeMap = {
  DeductibilityType.deductible: 'Deductible',
  DeductibilityType.notDeductible: 'Not Deductible',
  DeductibilityType.notDeductibleGenerally: 'Not Deductible, Generally'
};

enum Severity {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('High')
  high,
  @JsonValue('Moderate')
  moderate,
  @JsonValue('Low')
  low
}

const $SeverityMap = {
  Severity.high: 'High',
  Severity.moderate: 'Moderate',
  Severity.low: 'Low'
};

enum PassFailOrNotReported {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Pass')
  pass,
  @JsonValue('Fail')
  fail,
  @JsonValue('Not Reported')
  notReported
}

const $PassFailOrNotReportedMap = {
  PassFailOrNotReported.pass: 'Pass',
  PassFailOrNotReported.fail: 'Fail',
  PassFailOrNotReported.notReported: 'Not Reported'
};

enum PassFailOrOptOut {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Pass')
  pass,
  @JsonValue('Fail')
  fail,
  @JsonValue('Opt-Out')
  optOut
}

const $PassFailOrOptOutMap = {
  PassFailOrOptOut.pass: 'Pass',
  PassFailOrOptOut.fail: 'Fail',
  PassFailOrOptOut.optOut: 'Opt-Out'
};

enum PassFailOrRemediated {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Pass')
  pass,
  @JsonValue('Fail')
  fail,
  @JsonValue('Remediated')
  remediated,
  @JsonValue('Not Reported')
  notReported
}

const $PassFailOrRemediatedMap = {
  PassFailOrRemediated.pass: 'Pass',
  PassFailOrRemediated.fail: 'Fail',
  PassFailOrRemediated.remediated: 'Remediated',
  PassFailOrRemediated.notReported: 'Not Reported'
};

enum PassFailOrPartial {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Pass')
  pass,
  @JsonValue('Fail')
  fail,
  @JsonValue('Partial')
  partial,
  @JsonValue('Not Reported')
  notReported
}

const $PassFailOrPartialMap = {
  PassFailOrPartial.pass: 'Pass',
  PassFailOrPartial.fail: 'Fail',
  PassFailOrPartial.partial: 'Partial',
  PassFailOrPartial.notReported: 'Not Reported'
};
