//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'performance_metrics.g.dart';

/// A collection of financial performance metrics, each of which has an assigned weight in Charity Navigator's Financial Score and Financial Rating
///
/// Properties:
/// * [fundraisingEfficiency] - The amount spent to raise $1 in charitable contributions. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Fundraising%20Efficiency&mid=1&cid=12&print=1*) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [fundraisingExpensesRatio] - This measure reflects what a charity spends to raise money. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Fundraising%20Expenses&mid=2&cid=12) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [programExpensesGrowth] - Average annual growth of organization's program expenses. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Program%20Expenses%20Growth&mid=6&cid=12&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [programExpensesRatio] - The percent of its total expenses a charity spends on the programs and services it exists to deliver. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Program%20Expenses&mid=7&cid=21&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [administrationExpensesRatio] - This measure reflects what percent of its total budget a charity spends on overhead, administrative staff and associated costs, and organizational meetings. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Administrative%20Expenses&mid=3&cid=12&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [liabilitiesToAssetsRatio] - Liabilities to Assets is an indicator of an organization’s solvency and or long term sustainability. This ratio is computed by dividing a charity's total liabilities by its total assets. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Liabilities%20to%20Assets&mid=10&cid=16&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [workingCapitalRatio] - Determines how long a charity could sustain its level of spending using its net available assets, or working capital, as reported on its most recently filed Form 990. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Working%20Capital%20Ratio&mid=4&cid=12&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [primaryRevenueGrowth] - Prior to CN2.1 Ratings looked at Primary Revenue Growth for an Organization in addition to Program Expense Growth.  For CN2.1 Ratings this is no longer considered and will be null <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
abstract class PerformanceMetrics implements Built<PerformanceMetrics, PerformanceMetricsBuilder> {
    /// The amount spent to raise $1 in charitable contributions. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Fundraising%20Efficiency&mid=1&cid=12&print=1*) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'fundraisingEfficiency')
    num? get fundraisingEfficiency;

    /// This measure reflects what a charity spends to raise money. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Fundraising%20Expenses&mid=2&cid=12) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'fundraisingExpensesRatio')
    num? get fundraisingExpensesRatio;

    /// Average annual growth of organization's program expenses. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Program%20Expenses%20Growth&mid=6&cid=12&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'programExpensesGrowth')
    num? get programExpensesGrowth;

    /// The percent of its total expenses a charity spends on the programs and services it exists to deliver. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Program%20Expenses&mid=7&cid=21&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'programExpensesRatio')
    num? get programExpensesRatio;

    /// This measure reflects what percent of its total budget a charity spends on overhead, administrative staff and associated costs, and organizational meetings. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Administrative%20Expenses&mid=3&cid=12&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'administrationExpensesRatio')
    num? get administrationExpensesRatio;

    /// Liabilities to Assets is an indicator of an organization’s solvency and or long term sustainability. This ratio is computed by dividing a charity's total liabilities by its total assets. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Liabilities%20to%20Assets&mid=10&cid=16&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'liabilitiesToAssetsRatio')
    num? get liabilitiesToAssetsRatio;

    /// Determines how long a charity could sustain its level of spending using its net available assets, or working capital, as reported on its most recently filed Form 990. [Learn More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=Working%20Capital%20Ratio&mid=4&cid=12&print=1) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'workingCapitalRatio')
    num? get workingCapitalRatio;

    /// Prior to CN2.1 Ratings looked at Primary Revenue Growth for an Organization in addition to Program Expense Growth.  For CN2.1 Ratings this is no longer considered and will be null <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'primaryRevenueGrowth')
    num? get primaryRevenueGrowth;

    PerformanceMetrics._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PerformanceMetricsBuilder b) => b;

    factory PerformanceMetrics([void updates(PerformanceMetricsBuilder b)]) = _$PerformanceMetrics;

    @BuiltValueSerializer(custom: true)
    static Serializer<PerformanceMetrics> get serializer => _$PerformanceMetricsSerializer();
}

class _$PerformanceMetricsSerializer implements StructuredSerializer<PerformanceMetrics> {
    @override
    final Iterable<Type> types = const [PerformanceMetrics, _$PerformanceMetrics];

    @override
    final String wireName = r'PerformanceMetrics';

    @override
    Iterable<Object?> serialize(Serializers serializers, PerformanceMetrics object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.fundraisingEfficiency != null) {
            result
                ..add(r'fundraisingEfficiency')
                ..add(serializers.serialize(object.fundraisingEfficiency,
                    specifiedType: const FullType(num)));
        }
        if (object.fundraisingExpensesRatio != null) {
            result
                ..add(r'fundraisingExpensesRatio')
                ..add(serializers.serialize(object.fundraisingExpensesRatio,
                    specifiedType: const FullType(num)));
        }
        if (object.programExpensesGrowth != null) {
            result
                ..add(r'programExpensesGrowth')
                ..add(serializers.serialize(object.programExpensesGrowth,
                    specifiedType: const FullType(num)));
        }
        if (object.programExpensesRatio != null) {
            result
                ..add(r'programExpensesRatio')
                ..add(serializers.serialize(object.programExpensesRatio,
                    specifiedType: const FullType(num)));
        }
        if (object.administrationExpensesRatio != null) {
            result
                ..add(r'administrationExpensesRatio')
                ..add(serializers.serialize(object.administrationExpensesRatio,
                    specifiedType: const FullType(num)));
        }
        if (object.liabilitiesToAssetsRatio != null) {
            result
                ..add(r'liabilitiesToAssetsRatio')
                ..add(serializers.serialize(object.liabilitiesToAssetsRatio,
                    specifiedType: const FullType(num)));
        }
        if (object.workingCapitalRatio != null) {
            result
                ..add(r'workingCapitalRatio')
                ..add(serializers.serialize(object.workingCapitalRatio,
                    specifiedType: const FullType(num)));
        }
        if (object.primaryRevenueGrowth != null) {
            result
                ..add(r'primaryRevenueGrowth')
                ..add(serializers.serialize(object.primaryRevenueGrowth,
                    specifiedType: const FullType(num)));
        }
        return result;
    }

    @override
    PerformanceMetrics deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PerformanceMetricsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'fundraisingEfficiency':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.fundraisingEfficiency = valueDes;
                    break;
                case r'fundraisingExpensesRatio':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.fundraisingExpensesRatio = valueDes;
                    break;
                case r'programExpensesGrowth':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.programExpensesGrowth = valueDes;
                    break;
                case r'programExpensesRatio':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.programExpensesRatio = valueDes;
                    break;
                case r'administrationExpensesRatio':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.administrationExpensesRatio = valueDes;
                    break;
                case r'liabilitiesToAssetsRatio':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.liabilitiesToAssetsRatio = valueDes;
                    break;
                case r'workingCapitalRatio':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.workingCapitalRatio = valueDes;
                    break;
                case r'primaryRevenueGrowth':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.primaryRevenueGrowth = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

