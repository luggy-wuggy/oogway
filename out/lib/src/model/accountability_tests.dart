//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/pass_fail_or_opt_out.dart';
import 'package:openapi/src/model/pass_fail_or_not_reported.dart';
import 'package:openapi/src/model/pass_fail_or_remediated.dart';
import 'package:openapi/src/model/pass_fail_or_partial.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'accountability_tests.g.dart';

/// A set of conditional tests, each of which has an assigned weight in Charity Navigator's Accountability and Transparency Score and Rating. These tests generally have a value of \"Pass\" or \"Fail.\" Some tests may be \"Not Reported\", or have a specific \"Partial\" state, somewhere in between an unequivocal pass or fail state.
///
/// Properties:
/// * [boardListStatus] 
/// * [staffListStatus] 
/// * [auditedFinancialStatus] 
/// * [form990Status] 
/// * [privacyStatus] 
/// * [loansToOrFromOfficers] 
/// * [loansToOfficers] 
/// * [loansFromOfficers] 
/// * [materialDiversionOfAssets] 
/// * [boardMeetingMinutes] 
/// * [distributes990ToBoard] 
/// * [conflictOfInterestPolicy] 
/// * [whistleBlowerPolicy] 
/// * [recordsRetentionPolicy] 
/// * [reportsCEOAndSalary] 
/// * [ceoCompensationProcedure] 
/// * [compensatesBoard] 
/// * [independentAudit] 
/// * [independentBoard] 
abstract class AccountabilityTests implements Built<AccountabilityTests, AccountabilityTestsBuilder> {
    @BuiltValueField(wireName: r'boardListStatus')
    PassFailOrNotReported? get boardListStatus;
    // enum boardListStatusEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'staffListStatus')
    PassFailOrNotReported? get staffListStatus;
    // enum staffListStatusEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'auditedFinancialStatus')
    PassFailOrNotReported? get auditedFinancialStatus;
    // enum auditedFinancialStatusEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'form990Status')
    PassFailOrNotReported? get form990Status;
    // enum form990StatusEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'privacyStatus')
    PassFailOrOptOut? get privacyStatus;
    // enum privacyStatusEnum {  Pass,  Fail,  Opt-Out,  };

    @BuiltValueField(wireName: r'loansToOrFromOfficers')
    PassFailOrNotReported? get loansToOrFromOfficers;
    // enum loansToOrFromOfficersEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'loansToOfficers')
    PassFailOrNotReported? get loansToOfficers;
    // enum loansToOfficersEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'loansFromOfficers')
    PassFailOrNotReported? get loansFromOfficers;
    // enum loansFromOfficersEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'materialDiversionOfAssets')
    PassFailOrRemediated? get materialDiversionOfAssets;
    // enum materialDiversionOfAssetsEnum {  Pass,  Fail,  Remediated,  Not Reported,  };

    @BuiltValueField(wireName: r'boardMeetingMinutes')
    PassFailOrNotReported? get boardMeetingMinutes;
    // enum boardMeetingMinutesEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'distributes990ToBoard')
    PassFailOrNotReported? get distributes990ToBoard;
    // enum distributes990ToBoardEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'conflictOfInterestPolicy')
    PassFailOrNotReported? get conflictOfInterestPolicy;
    // enum conflictOfInterestPolicyEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'whistleBlowerPolicy')
    PassFailOrNotReported? get whistleBlowerPolicy;
    // enum whistleBlowerPolicyEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'recordsRetentionPolicy')
    PassFailOrNotReported? get recordsRetentionPolicy;
    // enum recordsRetentionPolicyEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'reportsCEOAndSalary')
    PassFailOrNotReported? get reportsCEOAndSalary;
    // enum reportsCEOAndSalaryEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'ceoCompensationProcedure')
    PassFailOrNotReported? get ceoCompensationProcedure;
    // enum ceoCompensationProcedureEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'compensatesBoard')
    PassFailOrNotReported? get compensatesBoard;
    // enum compensatesBoardEnum {  Pass,  Fail,  Not Reported,  };

    @BuiltValueField(wireName: r'independentAudit')
    PassFailOrPartial? get independentAudit;
    // enum independentAuditEnum {  Pass,  Fail,  Partial,  Not Reported,  };

    @BuiltValueField(wireName: r'independentBoard')
    PassFailOrNotReported? get independentBoard;
    // enum independentBoardEnum {  Pass,  Fail,  Not Reported,  };

    AccountabilityTests._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AccountabilityTestsBuilder b) => b;

    factory AccountabilityTests([void updates(AccountabilityTestsBuilder b)]) = _$AccountabilityTests;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccountabilityTests> get serializer => _$AccountabilityTestsSerializer();
}

class _$AccountabilityTestsSerializer implements StructuredSerializer<AccountabilityTests> {
    @override
    final Iterable<Type> types = const [AccountabilityTests, _$AccountabilityTests];

    @override
    final String wireName = r'AccountabilityTests';

    @override
    Iterable<Object?> serialize(Serializers serializers, AccountabilityTests object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.boardListStatus != null) {
            result
                ..add(r'boardListStatus')
                ..add(serializers.serialize(object.boardListStatus,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.staffListStatus != null) {
            result
                ..add(r'staffListStatus')
                ..add(serializers.serialize(object.staffListStatus,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.auditedFinancialStatus != null) {
            result
                ..add(r'auditedFinancialStatus')
                ..add(serializers.serialize(object.auditedFinancialStatus,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.form990Status != null) {
            result
                ..add(r'form990Status')
                ..add(serializers.serialize(object.form990Status,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.privacyStatus != null) {
            result
                ..add(r'privacyStatus')
                ..add(serializers.serialize(object.privacyStatus,
                    specifiedType: const FullType(PassFailOrOptOut)));
        }
        if (object.loansToOrFromOfficers != null) {
            result
                ..add(r'loansToOrFromOfficers')
                ..add(serializers.serialize(object.loansToOrFromOfficers,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.loansToOfficers != null) {
            result
                ..add(r'loansToOfficers')
                ..add(serializers.serialize(object.loansToOfficers,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.loansFromOfficers != null) {
            result
                ..add(r'loansFromOfficers')
                ..add(serializers.serialize(object.loansFromOfficers,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.materialDiversionOfAssets != null) {
            result
                ..add(r'materialDiversionOfAssets')
                ..add(serializers.serialize(object.materialDiversionOfAssets,
                    specifiedType: const FullType(PassFailOrRemediated)));
        }
        if (object.boardMeetingMinutes != null) {
            result
                ..add(r'boardMeetingMinutes')
                ..add(serializers.serialize(object.boardMeetingMinutes,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.distributes990ToBoard != null) {
            result
                ..add(r'distributes990ToBoard')
                ..add(serializers.serialize(object.distributes990ToBoard,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.conflictOfInterestPolicy != null) {
            result
                ..add(r'conflictOfInterestPolicy')
                ..add(serializers.serialize(object.conflictOfInterestPolicy,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.whistleBlowerPolicy != null) {
            result
                ..add(r'whistleBlowerPolicy')
                ..add(serializers.serialize(object.whistleBlowerPolicy,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.recordsRetentionPolicy != null) {
            result
                ..add(r'recordsRetentionPolicy')
                ..add(serializers.serialize(object.recordsRetentionPolicy,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.reportsCEOAndSalary != null) {
            result
                ..add(r'reportsCEOAndSalary')
                ..add(serializers.serialize(object.reportsCEOAndSalary,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.ceoCompensationProcedure != null) {
            result
                ..add(r'ceoCompensationProcedure')
                ..add(serializers.serialize(object.ceoCompensationProcedure,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.compensatesBoard != null) {
            result
                ..add(r'compensatesBoard')
                ..add(serializers.serialize(object.compensatesBoard,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        if (object.independentAudit != null) {
            result
                ..add(r'independentAudit')
                ..add(serializers.serialize(object.independentAudit,
                    specifiedType: const FullType(PassFailOrPartial)));
        }
        if (object.independentBoard != null) {
            result
                ..add(r'independentBoard')
                ..add(serializers.serialize(object.independentBoard,
                    specifiedType: const FullType(PassFailOrNotReported)));
        }
        return result;
    }

    @override
    AccountabilityTests deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountabilityTestsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'boardListStatus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.boardListStatus = valueDes;
                    break;
                case r'staffListStatus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.staffListStatus = valueDes;
                    break;
                case r'auditedFinancialStatus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.auditedFinancialStatus = valueDes;
                    break;
                case r'form990Status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.form990Status = valueDes;
                    break;
                case r'privacyStatus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrOptOut)) as PassFailOrOptOut;
                    result.privacyStatus = valueDes;
                    break;
                case r'loansToOrFromOfficers':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.loansToOrFromOfficers = valueDes;
                    break;
                case r'loansToOfficers':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.loansToOfficers = valueDes;
                    break;
                case r'loansFromOfficers':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.loansFromOfficers = valueDes;
                    break;
                case r'materialDiversionOfAssets':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrRemediated)) as PassFailOrRemediated;
                    result.materialDiversionOfAssets = valueDes;
                    break;
                case r'boardMeetingMinutes':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.boardMeetingMinutes = valueDes;
                    break;
                case r'distributes990ToBoard':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.distributes990ToBoard = valueDes;
                    break;
                case r'conflictOfInterestPolicy':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.conflictOfInterestPolicy = valueDes;
                    break;
                case r'whistleBlowerPolicy':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.whistleBlowerPolicy = valueDes;
                    break;
                case r'recordsRetentionPolicy':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.recordsRetentionPolicy = valueDes;
                    break;
                case r'reportsCEOAndSalary':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.reportsCEOAndSalary = valueDes;
                    break;
                case r'ceoCompensationProcedure':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.ceoCompensationProcedure = valueDes;
                    break;
                case r'compensatesBoard':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.compensatesBoard = valueDes;
                    break;
                case r'independentAudit':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrPartial)) as PassFailOrPartial;
                    result.independentAudit = valueDes;
                    break;
                case r'independentBoard':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PassFailOrNotReported)) as PassFailOrNotReported;
                    result.independentBoard = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

