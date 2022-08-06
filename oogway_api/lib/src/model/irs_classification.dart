//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:oogway_api/src/model/deductibility_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'irs_classification.g.dart';

/// Describes the classification and tax treatment of the Organization by the Internal Revenue Service.
///
/// Properties:
/// * [subsection] - A subsection in the tax code which defines the category under which an organization may be exempt from taxes.
/// * [foundationStatus] - IRS classification of type of foundation. This is only applicable to 501(c)(3) Foundations.
/// * [deductibility] 
/// * [deductibilityDetail] - Provides more information when deductibility is NOT_DEDUCTIBLE_GENERALLY, indicating that donations to an organization are not generally deductible.
/// * [deductibilityCode] - IRS Code to specify whether donations to this organization are tax-deductible.
/// * [nteeCode] - The IRS's full classification code for the type of work this Organization performs
/// * [nteeClassification] - The IRS's text description of the work that this Organization performs which corresponds to the full NTEECode
/// * [nteeLetter] - Within the IRS's classification system, the first letter of the code represents broad subsectors, such as health, education, and youth development, of the charitable organization universe.
/// * [nteeType] - The IRS's text description of the NTEE Letter portion of this this organizations classification
/// * [nteeSuffix] - The last and optional character in the IRS classification system
/// * [affiliation] - affiliation
/// * [groupName] - groupName
/// * [exemptOrgStatus] - exemptOrgStatus
/// * [exemptOrgStatusCode] - exemptOrgStatusCode
/// * [rulingDate] - rulingDate
/// * [assetAmount] - assetAmount
/// * [incomeAmount] - incomeAmount
/// * [latest990] - latest990
/// * [filingRequirement] - filingRequirement
/// * [accountingPeriod] - accountingPeriod
/// * [classification] - classification
abstract class IRSClassification implements Built<IRSClassification, IRSClassificationBuilder> {
    /// A subsection in the tax code which defines the category under which an organization may be exempt from taxes.
    @BuiltValueField(wireName: r'subsection')
    String? get subsection;

    /// IRS classification of type of foundation. This is only applicable to 501(c)(3) Foundations.
    @BuiltValueField(wireName: r'foundationStatus')
    String? get foundationStatus;

    @BuiltValueField(wireName: r'deductibility')
    DeductibilityType? get deductibility;
    // enum deductibilityEnum {  Deductible,  Not Deductible,  Not Deductible, Generally,  };

    /// Provides more information when deductibility is NOT_DEDUCTIBLE_GENERALLY, indicating that donations to an organization are not generally deductible.
    @BuiltValueField(wireName: r'deductibilityDetail')
    String? get deductibilityDetail;

    /// IRS Code to specify whether donations to this organization are tax-deductible.
    @BuiltValueField(wireName: r'deductibilityCode')
    String? get deductibilityCode;

    /// The IRS's full classification code for the type of work this Organization performs
    @BuiltValueField(wireName: r'nteeCode')
    String? get nteeCode;

    /// The IRS's text description of the work that this Organization performs which corresponds to the full NTEECode
    @BuiltValueField(wireName: r'nteeClassification')
    String? get nteeClassification;

    /// Within the IRS's classification system, the first letter of the code represents broad subsectors, such as health, education, and youth development, of the charitable organization universe.
    @BuiltValueField(wireName: r'nteeLetter')
    String? get nteeLetter;

    /// The IRS's text description of the NTEE Letter portion of this this organizations classification
    @BuiltValueField(wireName: r'nteeType')
    String? get nteeType;

    /// The last and optional character in the IRS classification system
    @BuiltValueField(wireName: r'nteeSuffix')
    String? get nteeSuffix;

    /// affiliation
    @BuiltValueField(wireName: r'affiliation')
    String? get affiliation;

    /// groupName
    @BuiltValueField(wireName: r'groupName')
    String? get groupName;

    /// exemptOrgStatus
    @BuiltValueField(wireName: r'exemptOrgStatus')
    String? get exemptOrgStatus;

    /// exemptOrgStatusCode
    @BuiltValueField(wireName: r'exemptOrgStatusCode')
    String? get exemptOrgStatusCode;

    /// rulingDate
    @BuiltValueField(wireName: r'rulingDate')
    String? get rulingDate;

    /// assetAmount
    @BuiltValueField(wireName: r'assetAmount')
    String? get assetAmount;

    /// incomeAmount
    @BuiltValueField(wireName: r'incomeAmount')
    String? get incomeAmount;

    /// latest990
    @BuiltValueField(wireName: r'latest990')
    String? get latest990;

    /// filingRequirement
    @BuiltValueField(wireName: r'filingRequirement')
    String? get filingRequirement;

    /// accountingPeriod
    @BuiltValueField(wireName: r'accountingPeriod')
    String? get accountingPeriod;

    /// classification
    @BuiltValueField(wireName: r'classification')
    String? get classification;

    IRSClassification._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(IRSClassificationBuilder b) => b;

    factory IRSClassification([void updates(IRSClassificationBuilder b)]) = _$IRSClassification;

    @BuiltValueSerializer(custom: true)
    static Serializer<IRSClassification> get serializer => _$IRSClassificationSerializer();
}

class _$IRSClassificationSerializer implements StructuredSerializer<IRSClassification> {
    @override
    final Iterable<Type> types = const [IRSClassification, _$IRSClassification];

    @override
    final String wireName = r'IRSClassification';

    @override
    Iterable<Object?> serialize(Serializers serializers, IRSClassification object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.subsection != null) {
            result
                ..add(r'subsection')
                ..add(serializers.serialize(object.subsection,
                    specifiedType: const FullType(String)));
        }
        if (object.foundationStatus != null) {
            result
                ..add(r'foundationStatus')
                ..add(serializers.serialize(object.foundationStatus,
                    specifiedType: const FullType(String)));
        }
        if (object.deductibility != null) {
            result
                ..add(r'deductibility')
                ..add(serializers.serialize(object.deductibility,
                    specifiedType: const FullType(DeductibilityType)));
        }
        if (object.deductibilityDetail != null) {
            result
                ..add(r'deductibilityDetail')
                ..add(serializers.serialize(object.deductibilityDetail,
                    specifiedType: const FullType(String)));
        }
        if (object.deductibilityCode != null) {
            result
                ..add(r'deductibilityCode')
                ..add(serializers.serialize(object.deductibilityCode,
                    specifiedType: const FullType(String)));
        }
        if (object.nteeCode != null) {
            result
                ..add(r'nteeCode')
                ..add(serializers.serialize(object.nteeCode,
                    specifiedType: const FullType(String)));
        }
        if (object.nteeClassification != null) {
            result
                ..add(r'nteeClassification')
                ..add(serializers.serialize(object.nteeClassification,
                    specifiedType: const FullType(String)));
        }
        if (object.nteeLetter != null) {
            result
                ..add(r'nteeLetter')
                ..add(serializers.serialize(object.nteeLetter,
                    specifiedType: const FullType(String)));
        }
        if (object.nteeType != null) {
            result
                ..add(r'nteeType')
                ..add(serializers.serialize(object.nteeType,
                    specifiedType: const FullType(String)));
        }
        if (object.nteeSuffix != null) {
            result
                ..add(r'nteeSuffix')
                ..add(serializers.serialize(object.nteeSuffix,
                    specifiedType: const FullType(String)));
        }
        if (object.affiliation != null) {
            result
                ..add(r'affiliation')
                ..add(serializers.serialize(object.affiliation,
                    specifiedType: const FullType(String)));
        }
        if (object.groupName != null) {
            result
                ..add(r'groupName')
                ..add(serializers.serialize(object.groupName,
                    specifiedType: const FullType(String)));
        }
        if (object.exemptOrgStatus != null) {
            result
                ..add(r'exemptOrgStatus')
                ..add(serializers.serialize(object.exemptOrgStatus,
                    specifiedType: const FullType(String)));
        }
        if (object.exemptOrgStatusCode != null) {
            result
                ..add(r'exemptOrgStatusCode')
                ..add(serializers.serialize(object.exemptOrgStatusCode,
                    specifiedType: const FullType(String)));
        }
        if (object.rulingDate != null) {
            result
                ..add(r'rulingDate')
                ..add(serializers.serialize(object.rulingDate,
                    specifiedType: const FullType(String)));
        }
        if (object.assetAmount != null) {
            result
                ..add(r'assetAmount')
                ..add(serializers.serialize(object.assetAmount,
                    specifiedType: const FullType(String)));
        }
        if (object.incomeAmount != null) {
            result
                ..add(r'incomeAmount')
                ..add(serializers.serialize(object.incomeAmount,
                    specifiedType: const FullType(String)));
        }
        if (object.latest990 != null) {
            result
                ..add(r'latest990')
                ..add(serializers.serialize(object.latest990,
                    specifiedType: const FullType(String)));
        }
        if (object.filingRequirement != null) {
            result
                ..add(r'filingRequirement')
                ..add(serializers.serialize(object.filingRequirement,
                    specifiedType: const FullType(String)));
        }
        if (object.accountingPeriod != null) {
            result
                ..add(r'accountingPeriod')
                ..add(serializers.serialize(object.accountingPeriod,
                    specifiedType: const FullType(String)));
        }
        if (object.classification != null) {
            result
                ..add(r'classification')
                ..add(serializers.serialize(object.classification,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    IRSClassification deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = IRSClassificationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'subsection':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.subsection = valueDes;
                    break;
                case r'foundationStatus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.foundationStatus = valueDes;
                    break;
                case r'deductibility':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DeductibilityType)) as DeductibilityType;
                    result.deductibility = valueDes;
                    break;
                case r'deductibilityDetail':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.deductibilityDetail = valueDes;
                    break;
                case r'deductibilityCode':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.deductibilityCode = valueDes;
                    break;
                case r'nteeCode':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.nteeCode = valueDes;
                    break;
                case r'nteeClassification':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.nteeClassification = valueDes;
                    break;
                case r'nteeLetter':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.nteeLetter = valueDes;
                    break;
                case r'nteeType':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.nteeType = valueDes;
                    break;
                case r'nteeSuffix':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.nteeSuffix = valueDes;
                    break;
                case r'affiliation':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.affiliation = valueDes;
                    break;
                case r'groupName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.groupName = valueDes;
                    break;
                case r'exemptOrgStatus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.exemptOrgStatus = valueDes;
                    break;
                case r'exemptOrgStatusCode':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.exemptOrgStatusCode = valueDes;
                    break;
                case r'rulingDate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.rulingDate = valueDes;
                    break;
                case r'assetAmount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.assetAmount = valueDes;
                    break;
                case r'incomeAmount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.incomeAmount = valueDes;
                    break;
                case r'latest990':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.latest990 = valueDes;
                    break;
                case r'filingRequirement':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.filingRequirement = valueDes;
                    break;
                case r'accountingPeriod':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.accountingPeriod = valueDes;
                    break;
                case r'classification':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.classification = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

