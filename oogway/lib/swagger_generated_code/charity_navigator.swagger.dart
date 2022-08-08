// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'charity_navigator.enums.swagger.dart' as enums;
export 'charity_navigator.enums.swagger.dart';

part 'charity_navigator.swagger.chopper.dart';
part 'charity_navigator.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class CharityNavigator extends ChopperService {
  static CharityNavigator create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$CharityNavigator(client);
    }

    final newClient = ChopperClient(
        services: [_$CharityNavigator()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://api.data.charitynavigator.org/v2');
    return _$CharityNavigator(newClient);
  }

  ///
  ///@param app_id 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///@param app_key 3Scale App Key: a secret key to authenticate the assigned App ID.
  ///@param pageSize Number of organizations to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  ///@param pageNum Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  ///@param search A simple search string that narrows the results to organizations matching the specified search terms. This is a relevance-driven search, not an exact match. Whitespace-separated terms in the search string are combined using AND logic, so adding terms has the effect of narrowing the search. By default, the search looks for matches in all string or text properties. The searchType parameter can change the field values included in the search.
  ///@param searchType .Used in combination with the `search` parameter, specifies the type of .search to be performed. . .| Value     | Search Behavior                       | .| --------- | ------------------------------------- | .| DEFAULT   | Search in all string properties.      | .| NAME_ONLY | Search only in the Organization name. | . .Omitting the searchType parameter has the same effect as specifying "DEFAULT". . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param rated .Specifies whether to include only rated charities or unrated charities. By .default, all charities will be returned. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `rated=TRUE`<br/>`rated=1`<br/>`rated` | Return only rated charities. | .| `rated=FALSE`<br/>`rated=0` | Return only unrated charities. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param categoryID ID of a Category. Search results will be filtered to include only organizations in the specified category.
  ///@param causeID ID of a Cause. Search results will be filtered to include only organizations in the specified cause.
  ///@param fundraisingOrgs .Specifies whether to include or exclude organizations flagged by Charity .Navigator as fundraising organizations. By default, all charities will be .returned.<br/> [Learn .More](javascript:openBrWindow('http://www.charitynavigator.org/index.cfm?bay=glossary.word&gid=95&print=1','glossary','scrollbars=yes,width=760,height=400') . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .Note that a charity that has a "Moderate" or "High" Severity Advisory has its rating superseded by the Advisory .and will not show up with the rated filter on. A rated charity with "Low" Severity Advisory is still considered rated .and will still be found with the filter on. . .| Usage | Search Behavior | .| --- | --- | .| `fundraisingOrgs=TRUE`<br/>`fundraisingOrgs=1`<br/>`fundraisingOrgs` | Return only fundraising organizations. | .| `fundraisingOrgs=FALSE`<br/>`fundraisingOrgs=0` | Return only charities that are not fundraising organizations. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param state If set to a valid 2-letter state code (not case-sensitive), filters search results to include only organizations in the specified state. An invalid state code will respond with a 400 error.
  ///@param city Filters search results to include only organizations in cities whose names match the specified string. This uses fuzzy matching, and the city name may be given as a partial string.
  ///@param zip Filters search results to include only organizations in the specified zip code.
  ///@param minRating Filters search results to include only organizations with a rating greater than or equal to the specified value. Must be an integer value betwen 0 and 4, inclusive. Must be less than or equal to maxRating, if specified.
  ///@param maxRating Filters search results to include only organizations with a rating less than or equal to the specified value. Must be an integer value betwen 0 and 4, inclusive. Must be greater than or equal to minRating, if specified.
  ///@param sizeRange .Filters search results to include only organizations within a given size .bracket, as measured in annual Total Expenses. possible values include: . .| Value | Range             | .| ----- | ----------------- | .| 1     | Up to $3.5MM      | .| 2     | $3.5MM to $13.5MM | .| 3     | $13.5MM and up    | .
  ///@param donorPrivacy .Specifies whether to include or exclude organizations that have a donor .privacy policy.  By default, all charities are included, regardless of donor .privacy policy. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `donorPrivacy=TRUE`<br/>`donorPrivacy=1`<br/>`donorPrivacy` | Return only organizations that have a donor privacy policy. | .| `donorPrivacy=FALSE`<br/>`donorPrivacy=0` | Return only organizations that do not have a donor privacy policy. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param scopeOfWork Filters search results to include only organizations with a given scope of work. Possible values are "ALL" (the default), "REGIONAL", "NATIONAL", or "INTERNATIONAL"
  ///@param cfcCharities .Specifies whether to include or exclude organizations that are included in .the Combined Federal Campaign, the largest workplace giving campaign in USA. By .default, all organizations are included.<br/> [Learn .More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=CFC&print=1.) . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `cfcCharities=TRUE`<br/>`cfcCharities=1`<br/>`cfcCharities` | Return only CFC charities. | .| `cfcCharities=FALSE`<br/>`cfcCharities=0` | Return only non-CFC charities. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param noGovSupport .Specifies whether to include or exclude organizations that do not receive .government support. By default, all organizations are included. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `noGovSupport=TRUE`<br/>`noGovSupport=1`<br/>`noGovSupport` | Return only charities that do not receive government support. | .| `noGovSupport=FALSE`<br/>`noGovSupport=0` | Return only charities that receive government support. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param sort .Specifies how results should be sorted. By default, results are sorted by .increasing `ein` value unless a `search` string is specified, in which case .results are sorted by decreasing relevance to the search string. . .This parameter takes the form of a sort property and an optional direction .indicator, separated by a colon. E.g. `NAME` or `NAME:ASC`. . .Sort property can be any of the following (examples indicate default direction): . .| Property | Example | Sort Behavior | .| ----- | ------- | ------------- | .| `NAME` | `sort=NAME:ASC` | Sort alphabetically by charity name | .| `RATING` | `sort=RATING:DESC` | Sort numerically by overall ratings score. Implies `rated=true`. | .| `RELEVANCE` | `sort=RELEVANCE:DESC` | Sort numerically by search relevance score | . .Currently only one sort property is allowed. . .Any of the following usages will result in an HTTP 400 error response: . .* Sort field is not one of the values listed above. .* Sort direction is provided and is neither `ASC` nor `DESC`. .* Sort field is `RATING` and `rated=false` is also specified. .* Sort field is `RELEVANCE` and the `search` parameter is not specified.
  Future<chopper.Response<OrganizationCollection>> organizationsGet(
      {required String? appId,
      required String? appKey,
      int? pageSize,
      int? pageNum,
      String? search,
      String? searchType,
      bool? rated,
      int? categoryID,
      String? causeID,
      bool? fundraisingOrgs,
      String? state,
      String? city,
      String? zip,
      int? minRating,
      int? maxRating,
      int? sizeRange,
      bool? donorPrivacy,
      int? scopeOfWork,
      bool? cfcCharities,
      bool? noGovSupport,
      String? sort}) {
    generatedMapping.putIfAbsent(OrganizationCollectionItem,
        () => OrganizationCollectionItem.fromJsonFactory);

    return _organizationsGet(
        appId: appId,
        appKey: appKey,
        pageSize: pageSize,
        pageNum: pageNum,
        search: search,
        searchType: searchType,
        rated: rated,
        categoryID: categoryID,
        causeID: causeID,
        fundraisingOrgs: fundraisingOrgs,
        state: state,
        city: city,
        zip: zip,
        minRating: minRating,
        maxRating: maxRating,
        sizeRange: sizeRange,
        donorPrivacy: donorPrivacy,
        scopeOfWork: scopeOfWork,
        cfcCharities: cfcCharities,
        noGovSupport: noGovSupport,
        sort: sort);
  }

  ///
  ///@param app_id 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///@param app_key 3Scale App Key: a secret key to authenticate the assigned App ID.
  ///@param pageSize Number of organizations to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  ///@param pageNum Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  ///@param search A simple search string that narrows the results to organizations matching the specified search terms. This is a relevance-driven search, not an exact match. Whitespace-separated terms in the search string are combined using AND logic, so adding terms has the effect of narrowing the search. By default, the search looks for matches in all string or text properties. The searchType parameter can change the field values included in the search.
  ///@param searchType .Used in combination with the `search` parameter, specifies the type of .search to be performed. . .| Value     | Search Behavior                       | .| --------- | ------------------------------------- | .| DEFAULT   | Search in all string properties.      | .| NAME_ONLY | Search only in the Organization name. | . .Omitting the searchType parameter has the same effect as specifying "DEFAULT". . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param rated .Specifies whether to include only rated charities or unrated charities. By .default, all charities will be returned. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `rated=TRUE`<br/>`rated=1`<br/>`rated` | Return only rated charities. | .| `rated=FALSE`<br/>`rated=0` | Return only unrated charities. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param categoryID ID of a Category. Search results will be filtered to include only organizations in the specified category.
  ///@param causeID ID of a Cause. Search results will be filtered to include only organizations in the specified cause.
  ///@param fundraisingOrgs .Specifies whether to include or exclude organizations flagged by Charity .Navigator as fundraising organizations. By default, all charities will be .returned.<br/> [Learn .More](javascript:openBrWindow('http://www.charitynavigator.org/index.cfm?bay=glossary.word&gid=95&print=1','glossary','scrollbars=yes,width=760,height=400') . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .Note that a charity that has a "Moderate" or "High" Severity Advisory has its rating superseded by the Advisory .and will not show up with the rated filter on. A rated charity with "Low" Severity Advisory is still considered rated .and will still be found with the filter on. . .| Usage | Search Behavior | .| --- | --- | .| `fundraisingOrgs=TRUE`<br/>`fundraisingOrgs=1`<br/>`fundraisingOrgs` | Return only fundraising organizations. | .| `fundraisingOrgs=FALSE`<br/>`fundraisingOrgs=0` | Return only charities that are not fundraising organizations. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param state If set to a valid 2-letter state code (not case-sensitive), filters search results to include only organizations in the specified state. An invalid state code will respond with a 400 error.
  ///@param city Filters search results to include only organizations in cities whose names match the specified string. This uses fuzzy matching, and the city name may be given as a partial string.
  ///@param zip Filters search results to include only organizations in the specified zip code.
  ///@param minRating Filters search results to include only organizations with a rating greater than or equal to the specified value. Must be an integer value betwen 0 and 4, inclusive. Must be less than or equal to maxRating, if specified.
  ///@param maxRating Filters search results to include only organizations with a rating less than or equal to the specified value. Must be an integer value betwen 0 and 4, inclusive. Must be greater than or equal to minRating, if specified.
  ///@param sizeRange .Filters search results to include only organizations within a given size .bracket, as measured in annual Total Expenses. possible values include: . .| Value | Range             | .| ----- | ----------------- | .| 1     | Up to $3.5MM      | .| 2     | $3.5MM to $13.5MM | .| 3     | $13.5MM and up    | .
  ///@param donorPrivacy .Specifies whether to include or exclude organizations that have a donor .privacy policy.  By default, all charities are included, regardless of donor .privacy policy. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `donorPrivacy=TRUE`<br/>`donorPrivacy=1`<br/>`donorPrivacy` | Return only organizations that have a donor privacy policy. | .| `donorPrivacy=FALSE`<br/>`donorPrivacy=0` | Return only organizations that do not have a donor privacy policy. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param scopeOfWork Filters search results to include only organizations with a given scope of work. Possible values are "ALL" (the default), "REGIONAL", "NATIONAL", or "INTERNATIONAL"
  ///@param cfcCharities .Specifies whether to include or exclude organizations that are included in .the Combined Federal Campaign, the largest workplace giving campaign in USA. By .default, all organizations are included.<br/> [Learn .More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=CFC&print=1.) . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `cfcCharities=TRUE`<br/>`cfcCharities=1`<br/>`cfcCharities` | Return only CFC charities. | .| `cfcCharities=FALSE`<br/>`cfcCharities=0` | Return only non-CFC charities. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param noGovSupport .Specifies whether to include or exclude organizations that do not receive .government support. By default, all organizations are included. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `noGovSupport=TRUE`<br/>`noGovSupport=1`<br/>`noGovSupport` | Return only charities that do not receive government support. | .| `noGovSupport=FALSE`<br/>`noGovSupport=0` | Return only charities that receive government support. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  ///@param sort .Specifies how results should be sorted. By default, results are sorted by .increasing `ein` value unless a `search` string is specified, in which case .results are sorted by decreasing relevance to the search string. . .This parameter takes the form of a sort property and an optional direction .indicator, separated by a colon. E.g. `NAME` or `NAME:ASC`. . .Sort property can be any of the following (examples indicate default direction): . .| Property | Example | Sort Behavior | .| ----- | ------- | ------------- | .| `NAME` | `sort=NAME:ASC` | Sort alphabetically by charity name | .| `RATING` | `sort=RATING:DESC` | Sort numerically by overall ratings score. Implies `rated=true`. | .| `RELEVANCE` | `sort=RELEVANCE:DESC` | Sort numerically by search relevance score | . .Currently only one sort property is allowed. . .Any of the following usages will result in an HTTP 400 error response: . .* Sort field is not one of the values listed above. .* Sort direction is provided and is neither `ASC` nor `DESC`. .* Sort field is `RATING` and `rated=false` is also specified. .* Sort field is `RELEVANCE` and the `search` parameter is not specified.
  @Get(path: '/Organizations')
  Future<chopper.Response<OrganizationCollection>> _organizationsGet(
      {@Query('app_id') required String? appId,
      @Query('app_key') required String? appKey,
      @Query('pageSize') int? pageSize,
      @Query('pageNum') int? pageNum,
      @Query('search') String? search,
      @Query('searchType') String? searchType,
      @Query('rated') bool? rated,
      @Query('categoryID') int? categoryID,
      @Query('causeID') String? causeID,
      @Query('fundraisingOrgs') bool? fundraisingOrgs,
      @Query('state') String? state,
      @Query('city') String? city,
      @Query('zip') String? zip,
      @Query('minRating') int? minRating,
      @Query('maxRating') int? maxRating,
      @Query('sizeRange') int? sizeRange,
      @Query('donorPrivacy') bool? donorPrivacy,
      @Query('scopeOfWork') int? scopeOfWork,
      @Query('cfcCharities') bool? cfcCharities,
      @Query('noGovSupport') bool? noGovSupport,
      @Query('sort') String? sort});

  ///
  ///@param ein
  ///@param app_id 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///@param app_key 3Scale App Key: a secret key to authenticate the assigned App ID.
  Future<chopper.Response<OrganizationObject>> organizationsEinGet(
      {required String? ein, required String? appId, required String? appKey}) {
    generatedMapping.putIfAbsent(
        OrganizationObject, () => OrganizationObject.fromJsonFactory);

    return _organizationsEinGet(ein: ein, appId: appId, appKey: appKey);
  }

  ///
  ///@param ein
  ///@param app_id 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///@param app_key 3Scale App Key: a secret key to authenticate the assigned App ID.
  @Get(path: '/Organizations/{ein}')
  Future<chopper.Response<OrganizationObject>> _organizationsEinGet(
      {@Path('ein') required String? ein,
      @Query('app_id') required String? appId,
      @Query('app_key') required String? appKey});

  ///
  ///@param ein
  ///@param app_id 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///@param app_key 3Scale App Key: a secret key to authenticate the assigned App ID.
  ///@param pageSize Number of objects to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  ///@param pageNum Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  ///@param status .An optional filter parameter to limit the Advisories returned, based on .status: . .| Status Value | Advisories Included                                 | .| ------------ | --------------------------------------------------- | .| ALL | All advisories included, regardless of status.      | .| ACTIVE       | Includes only advisories that are currently active. | .| REMOVED      | Includes only advisories that have been removed.    | . .Omitting the status property is the equivalent of specifying ALL. Any value .other than the ones listed above will result in an HTTP error 400.
  Future<chopper.Response<AdvisoryCollection>> organizationsEinAdvisoriesGet(
      {required String? ein,
      required String? appId,
      required String? appKey,
      int? pageSize,
      int? pageNum,
      String? status}) {
    generatedMapping.putIfAbsent(
        AdvisoryCollectionItem, () => AdvisoryCollectionItem.fromJsonFactory);

    return _organizationsEinAdvisoriesGet(
        ein: ein,
        appId: appId,
        appKey: appKey,
        pageSize: pageSize,
        pageNum: pageNum,
        status: status);
  }

  ///
  ///@param ein
  ///@param app_id 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///@param app_key 3Scale App Key: a secret key to authenticate the assigned App ID.
  ///@param pageSize Number of objects to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  ///@param pageNum Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  ///@param status .An optional filter parameter to limit the Advisories returned, based on .status: . .| Status Value | Advisories Included                                 | .| ------------ | --------------------------------------------------- | .| ALL | All advisories included, regardless of status.      | .| ACTIVE       | Includes only advisories that are currently active. | .| REMOVED      | Includes only advisories that have been removed.    | . .Omitting the status property is the equivalent of specifying ALL. Any value .other than the ones listed above will result in an HTTP error 400.
  @Get(path: '/Organizations/{ein}/Advisories')
  Future<chopper.Response<AdvisoryCollection>> _organizationsEinAdvisoriesGet(
      {@Path('ein') required String? ein,
      @Query('app_id') required String? appId,
      @Query('app_key') required String? appKey,
      @Query('pageSize') int? pageSize,
      @Query('pageNum') int? pageNum,
      @Query('status') String? status});

  ///
  ///@param ein
  ///@param AdvisoryID
  ///@param app_id 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///@param app_key 3Scale App Key: a secret key to authenticate the assigned App ID.
  Future<chopper.Response<Advisory>> organizationsEinAdvisoriesAdvisoryIDGet(
      {required String? ein,
      required String? advisoryID,
      required String? appId,
      required String? appKey}) {
    generatedMapping.putIfAbsent(Advisory, () => Advisory.fromJsonFactory);

    return _organizationsEinAdvisoriesAdvisoryIDGet(
        ein: ein, advisoryID: advisoryID, appId: appId, appKey: appKey);
  }

  ///
  ///@param ein
  ///@param AdvisoryID
  ///@param app_id 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///@param app_key 3Scale App Key: a secret key to authenticate the assigned App ID.
  @Get(path: '/Organizations/{ein}/Advisories/{AdvisoryID}')
  Future<chopper.Response<Advisory>> _organizationsEinAdvisoriesAdvisoryIDGet(
      {@Path('ein') required String? ein,
      @Path('AdvisoryID') required String? advisoryID,
      @Query('app_id') required String? appId,
      @Query('app_key') required String? appKey});

  ///
  ///@param app_id 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///@param app_key 3Scale App Key: a secret key to authenticate the assigned App ID.
  ///@param pageSize Number of organizations to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  ///@param pageNum Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  Future<chopper.Response<ActiveAdvisoryCollection>> advisoryGet(
      {required String? appId,
      required String? appKey,
      int? pageSize,
      int? pageNum}) {
    generatedMapping.putIfAbsent(ActiveAdvisoryCollectionItem,
        () => ActiveAdvisoryCollectionItem.fromJsonFactory);

    return _advisoryGet(
        appId: appId, appKey: appKey, pageSize: pageSize, pageNum: pageNum);
  }

  ///
  ///@param app_id 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  ///@param app_key 3Scale App Key: a secret key to authenticate the assigned App ID.
  ///@param pageSize Number of organizations to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  ///@param pageNum Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  @Get(path: '/Advisory')
  Future<chopper.Response<ActiveAdvisoryCollection>> _advisoryGet(
      {@Query('app_id') required String? appId,
      @Query('app_key') required String? appKey,
      @Query('pageSize') int? pageSize,
      @Query('pageNum') int? pageNum});
}

typedef OrganizationCollection = List<OrganizationCollectionItem>;

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionItem {
  OrganizationCollectionItem({
    required this.ein,
    this.orgID,
    this.charityName,
    this.tagLine,
    this.websiteURL,
    this.charityNavigatorURL,
    this.mission,
    this.currentRating,
    this.category,
    this.cause,
    this.irsClassification,
    this.mailingAddress,
    this.donationAddress,
    this.advisories,
    required this.organization,
  });

  factory OrganizationCollectionItem.fromJson(Map<String, dynamic> json) =>
      _$OrganizationCollectionItemFromJson(json);

  @JsonKey(name: 'ein')
  final String ein;
  @JsonKey(name: 'orgID')
  final int? orgID;
  @JsonKey(name: 'charityName')
  final String? charityName;
  @JsonKey(name: 'tagLine')
  final String? tagLine;
  @JsonKey(name: 'websiteURL')
  final String? websiteURL;
  @JsonKey(name: 'charityNavigatorURL')
  final String? charityNavigatorURL;
  @JsonKey(name: 'mission')
  final String? mission;
  @JsonKey(name: 'currentRating')
  final OrganizationCollectionCurrentRating? currentRating;
  @JsonKey(name: 'category')
  final OrganizationCollectionCategory? category;
  @JsonKey(name: 'cause')
  final OrganizationCollectionCause? cause;
  @JsonKey(name: 'irsClassification')
  final OrganizationCollectionIrsClassification? irsClassification;
  @JsonKey(name: 'mailingAddress')
  final OrganizationCollectionMailingAddress? mailingAddress;
  @JsonKey(name: 'donationAddress')
  final OrganizationCollectionDonationAddress? donationAddress;
  @JsonKey(name: 'advisories')
  final OrganizationCollectionAdvisories? advisories;
  @JsonKey(name: 'organization')
  final OrganizationLink organization;
  static const fromJsonFactory = _$OrganizationCollectionItemFromJson;
  static const toJsonFactory = _$OrganizationCollectionItemToJson;
  Map<String, dynamic> toJson() => _$OrganizationCollectionItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionItem &&
            (identical(other.ein, ein) ||
                const DeepCollectionEquality().equals(other.ein, ein)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.charityName, charityName) ||
                const DeepCollectionEquality()
                    .equals(other.charityName, charityName)) &&
            (identical(other.tagLine, tagLine) ||
                const DeepCollectionEquality()
                    .equals(other.tagLine, tagLine)) &&
            (identical(other.websiteURL, websiteURL) ||
                const DeepCollectionEquality()
                    .equals(other.websiteURL, websiteURL)) &&
            (identical(other.charityNavigatorURL, charityNavigatorURL) ||
                const DeepCollectionEquality()
                    .equals(other.charityNavigatorURL, charityNavigatorURL)) &&
            (identical(other.mission, mission) ||
                const DeepCollectionEquality()
                    .equals(other.mission, mission)) &&
            (identical(other.currentRating, currentRating) ||
                const DeepCollectionEquality()
                    .equals(other.currentRating, currentRating)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.cause, cause) ||
                const DeepCollectionEquality().equals(other.cause, cause)) &&
            (identical(other.irsClassification, irsClassification) ||
                const DeepCollectionEquality()
                    .equals(other.irsClassification, irsClassification)) &&
            (identical(other.mailingAddress, mailingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.mailingAddress, mailingAddress)) &&
            (identical(other.donationAddress, donationAddress) ||
                const DeepCollectionEquality()
                    .equals(other.donationAddress, donationAddress)) &&
            (identical(other.advisories, advisories) ||
                const DeepCollectionEquality()
                    .equals(other.advisories, advisories)) &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ein) ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(charityName) ^
      const DeepCollectionEquality().hash(tagLine) ^
      const DeepCollectionEquality().hash(websiteURL) ^
      const DeepCollectionEquality().hash(charityNavigatorURL) ^
      const DeepCollectionEquality().hash(mission) ^
      const DeepCollectionEquality().hash(currentRating) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(cause) ^
      const DeepCollectionEquality().hash(irsClassification) ^
      const DeepCollectionEquality().hash(mailingAddress) ^
      const DeepCollectionEquality().hash(donationAddress) ^
      const DeepCollectionEquality().hash(advisories) ^
      const DeepCollectionEquality().hash(organization) ^
      runtimeType.hashCode;
}

extension $OrganizationCollectionItemExtension on OrganizationCollectionItem {
  OrganizationCollectionItem copyWith(
      {String? ein,
      int? orgID,
      String? charityName,
      String? tagLine,
      String? websiteURL,
      String? charityNavigatorURL,
      String? mission,
      OrganizationCollectionCurrentRating? currentRating,
      OrganizationCollectionCategory? category,
      OrganizationCollectionCause? cause,
      OrganizationCollectionIrsClassification? irsClassification,
      OrganizationCollectionMailingAddress? mailingAddress,
      OrganizationCollectionDonationAddress? donationAddress,
      OrganizationCollectionAdvisories? advisories,
      OrganizationLink? organization}) {
    return OrganizationCollectionItem(
        ein: ein ?? this.ein,
        orgID: orgID ?? this.orgID,
        charityName: charityName ?? this.charityName,
        tagLine: tagLine ?? this.tagLine,
        websiteURL: websiteURL ?? this.websiteURL,
        charityNavigatorURL: charityNavigatorURL ?? this.charityNavigatorURL,
        mission: mission ?? this.mission,
        currentRating: currentRating ?? this.currentRating,
        category: category ?? this.category,
        cause: cause ?? this.cause,
        irsClassification: irsClassification ?? this.irsClassification,
        mailingAddress: mailingAddress ?? this.mailingAddress,
        donationAddress: donationAddress ?? this.donationAddress,
        advisories: advisories ?? this.advisories,
        organization: organization ?? this.organization);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionCurrentRating {
  OrganizationCollectionCurrentRating({
    this.ratingID,
    this.score,
    this.rating,
    this.publicationDate,
    this.financialRating,
    this.accountabilityRating,
    this.ratingImage,
    this.form990,
  });

  factory OrganizationCollectionCurrentRating.fromJson(
          Map<String, dynamic> json) =>
      _$OrganizationCollectionCurrentRatingFromJson(json);

  @JsonKey(name: 'ratingID')
  final String? ratingID;
  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'rating')
  final int? rating;
  @JsonKey(name: 'publicationDate', toJson: _dateToJson)
  final DateTime? publicationDate;
  @JsonKey(name: 'financialRating')
  final OrganizationCollectionCurrentRatingFinancialRating? financialRating;
  @JsonKey(name: 'accountabilityRating')
  final OrganizationCollectionCurrentRatingAccountabilityRating?
      accountabilityRating;
  @JsonKey(name: 'ratingImage')
  final IconSet? ratingImage;
  @JsonKey(name: 'form990')
  final Form990? form990;
  static const fromJsonFactory = _$OrganizationCollectionCurrentRatingFromJson;
  static const toJsonFactory = _$OrganizationCollectionCurrentRatingToJson;
  Map<String, dynamic> toJson() =>
      _$OrganizationCollectionCurrentRatingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionCurrentRating &&
            (identical(other.ratingID, ratingID) ||
                const DeepCollectionEquality()
                    .equals(other.ratingID, ratingID)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.publicationDate, publicationDate) ||
                const DeepCollectionEquality()
                    .equals(other.publicationDate, publicationDate)) &&
            (identical(other.financialRating, financialRating) ||
                const DeepCollectionEquality()
                    .equals(other.financialRating, financialRating)) &&
            (identical(other.accountabilityRating, accountabilityRating) ||
                const DeepCollectionEquality().equals(
                    other.accountabilityRating, accountabilityRating)) &&
            (identical(other.ratingImage, ratingImage) ||
                const DeepCollectionEquality()
                    .equals(other.ratingImage, ratingImage)) &&
            (identical(other.form990, form990) ||
                const DeepCollectionEquality().equals(other.form990, form990)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ratingID) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(publicationDate) ^
      const DeepCollectionEquality().hash(financialRating) ^
      const DeepCollectionEquality().hash(accountabilityRating) ^
      const DeepCollectionEquality().hash(ratingImage) ^
      const DeepCollectionEquality().hash(form990) ^
      runtimeType.hashCode;
}

extension $OrganizationCollectionCurrentRatingExtension
    on OrganizationCollectionCurrentRating {
  OrganizationCollectionCurrentRating copyWith(
      {String? ratingID,
      double? score,
      int? rating,
      DateTime? publicationDate,
      OrganizationCollectionCurrentRatingFinancialRating? financialRating,
      OrganizationCollectionCurrentRatingAccountabilityRating?
          accountabilityRating,
      IconSet? ratingImage,
      Form990? form990}) {
    return OrganizationCollectionCurrentRating(
        ratingID: ratingID ?? this.ratingID,
        score: score ?? this.score,
        rating: rating ?? this.rating,
        publicationDate: publicationDate ?? this.publicationDate,
        financialRating: financialRating ?? this.financialRating,
        accountabilityRating: accountabilityRating ?? this.accountabilityRating,
        ratingImage: ratingImage ?? this.ratingImage,
        form990: form990 ?? this.form990);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionCurrentRatingFinancialRating {
  OrganizationCollectionCurrentRatingFinancialRating({
    this.score,
    this.rating,
  });

  factory OrganizationCollectionCurrentRatingFinancialRating.fromJson(
          Map<String, dynamic> json) =>
      _$OrganizationCollectionCurrentRatingFinancialRatingFromJson(json);

  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'rating')
  final int? rating;
  static const fromJsonFactory =
      _$OrganizationCollectionCurrentRatingFinancialRatingFromJson;
  static const toJsonFactory =
      _$OrganizationCollectionCurrentRatingFinancialRatingToJson;
  Map<String, dynamic> toJson() =>
      _$OrganizationCollectionCurrentRatingFinancialRatingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionCurrentRatingFinancialRating &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(rating) ^
      runtimeType.hashCode;
}

extension $OrganizationCollectionCurrentRatingFinancialRatingExtension
    on OrganizationCollectionCurrentRatingFinancialRating {
  OrganizationCollectionCurrentRatingFinancialRating copyWith(
      {double? score, int? rating}) {
    return OrganizationCollectionCurrentRatingFinancialRating(
        score: score ?? this.score, rating: rating ?? this.rating);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionCurrentRatingAccountabilityRating {
  OrganizationCollectionCurrentRatingAccountabilityRating({
    this.score,
    this.rating,
  });

  factory OrganizationCollectionCurrentRatingAccountabilityRating.fromJson(
          Map<String, dynamic> json) =>
      _$OrganizationCollectionCurrentRatingAccountabilityRatingFromJson(json);

  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'rating')
  final int? rating;
  static const fromJsonFactory =
      _$OrganizationCollectionCurrentRatingAccountabilityRatingFromJson;
  static const toJsonFactory =
      _$OrganizationCollectionCurrentRatingAccountabilityRatingToJson;
  Map<String, dynamic> toJson() =>
      _$OrganizationCollectionCurrentRatingAccountabilityRatingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionCurrentRatingAccountabilityRating &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(rating) ^
      runtimeType.hashCode;
}

extension $OrganizationCollectionCurrentRatingAccountabilityRatingExtension
    on OrganizationCollectionCurrentRatingAccountabilityRating {
  OrganizationCollectionCurrentRatingAccountabilityRating copyWith(
      {double? score, int? rating}) {
    return OrganizationCollectionCurrentRatingAccountabilityRating(
        score: score ?? this.score, rating: rating ?? this.rating);
  }
}

@JsonSerializable(explicitToJson: true)
class IconSet {
  IconSet({
    this.small,
    this.large,
  });

  factory IconSet.fromJson(Map<String, dynamic> json) =>
      _$IconSetFromJson(json);

  @JsonKey(name: 'small')
  final String? small;
  @JsonKey(name: 'large')
  final String? large;
  static const fromJsonFactory = _$IconSetFromJson;
  static const toJsonFactory = _$IconSetToJson;
  Map<String, dynamic> toJson() => _$IconSetToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IconSet &&
            (identical(other.small, small) ||
                const DeepCollectionEquality().equals(other.small, small)) &&
            (identical(other.large, large) ||
                const DeepCollectionEquality().equals(other.large, large)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(small) ^
      const DeepCollectionEquality().hash(large) ^
      runtimeType.hashCode;
}

extension $IconSetExtension on IconSet {
  IconSet copyWith({String? small, String? large}) {
    return IconSet(small: small ?? this.small, large: large ?? this.large);
  }
}

@JsonSerializable(explicitToJson: true)
class Form990 {
  Form990({
    this.fundraisingExpenses,
    this.administrativeExpenses,
    this.programExpenses,
    this.totalExpenses,
    this.totalRevenue,
    this.totalNetAssets,
    this.totalContributions,
    this.primaryRevenue,
    this.otherRevenue,
    this.ceoCompensationPercent,
  });

  factory Form990.fromJson(Map<String, dynamic> json) =>
      _$Form990FromJson(json);

  @JsonKey(name: 'fundraisingExpenses')
  final double? fundraisingExpenses;
  @JsonKey(name: 'administrativeExpenses')
  final double? administrativeExpenses;
  @JsonKey(name: 'programExpenses')
  final double? programExpenses;
  @JsonKey(name: 'totalExpenses')
  final double? totalExpenses;
  @JsonKey(name: 'totalRevenue')
  final double? totalRevenue;
  @JsonKey(name: 'totalNetAssets')
  final double? totalNetAssets;
  @JsonKey(name: 'totalContributions')
  final double? totalContributions;
  @JsonKey(name: 'primaryRevenue')
  final double? primaryRevenue;
  @JsonKey(name: 'otherRevenue')
  final double? otherRevenue;
  @JsonKey(name: 'ceoCompensationPercent')
  final double? ceoCompensationPercent;
  static const fromJsonFactory = _$Form990FromJson;
  static const toJsonFactory = _$Form990ToJson;
  Map<String, dynamic> toJson() => _$Form990ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Form990 &&
            (identical(other.fundraisingExpenses, fundraisingExpenses) ||
                const DeepCollectionEquality()
                    .equals(other.fundraisingExpenses, fundraisingExpenses)) &&
            (identical(other.administrativeExpenses, administrativeExpenses) ||
                const DeepCollectionEquality().equals(
                    other.administrativeExpenses, administrativeExpenses)) &&
            (identical(other.programExpenses, programExpenses) ||
                const DeepCollectionEquality()
                    .equals(other.programExpenses, programExpenses)) &&
            (identical(other.totalExpenses, totalExpenses) ||
                const DeepCollectionEquality()
                    .equals(other.totalExpenses, totalExpenses)) &&
            (identical(other.totalRevenue, totalRevenue) ||
                const DeepCollectionEquality()
                    .equals(other.totalRevenue, totalRevenue)) &&
            (identical(other.totalNetAssets, totalNetAssets) ||
                const DeepCollectionEquality()
                    .equals(other.totalNetAssets, totalNetAssets)) &&
            (identical(other.totalContributions, totalContributions) ||
                const DeepCollectionEquality()
                    .equals(other.totalContributions, totalContributions)) &&
            (identical(other.primaryRevenue, primaryRevenue) ||
                const DeepCollectionEquality()
                    .equals(other.primaryRevenue, primaryRevenue)) &&
            (identical(other.otherRevenue, otherRevenue) ||
                const DeepCollectionEquality()
                    .equals(other.otherRevenue, otherRevenue)) &&
            (identical(other.ceoCompensationPercent, ceoCompensationPercent) ||
                const DeepCollectionEquality().equals(
                    other.ceoCompensationPercent, ceoCompensationPercent)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fundraisingExpenses) ^
      const DeepCollectionEquality().hash(administrativeExpenses) ^
      const DeepCollectionEquality().hash(programExpenses) ^
      const DeepCollectionEquality().hash(totalExpenses) ^
      const DeepCollectionEquality().hash(totalRevenue) ^
      const DeepCollectionEquality().hash(totalNetAssets) ^
      const DeepCollectionEquality().hash(totalContributions) ^
      const DeepCollectionEquality().hash(primaryRevenue) ^
      const DeepCollectionEquality().hash(otherRevenue) ^
      const DeepCollectionEquality().hash(ceoCompensationPercent) ^
      runtimeType.hashCode;
}

extension $Form990Extension on Form990 {
  Form990 copyWith(
      {double? fundraisingExpenses,
      double? administrativeExpenses,
      double? programExpenses,
      double? totalExpenses,
      double? totalRevenue,
      double? totalNetAssets,
      double? totalContributions,
      double? primaryRevenue,
      double? otherRevenue,
      double? ceoCompensationPercent}) {
    return Form990(
        fundraisingExpenses: fundraisingExpenses ?? this.fundraisingExpenses,
        administrativeExpenses:
            administrativeExpenses ?? this.administrativeExpenses,
        programExpenses: programExpenses ?? this.programExpenses,
        totalExpenses: totalExpenses ?? this.totalExpenses,
        totalRevenue: totalRevenue ?? this.totalRevenue,
        totalNetAssets: totalNetAssets ?? this.totalNetAssets,
        totalContributions: totalContributions ?? this.totalContributions,
        primaryRevenue: primaryRevenue ?? this.primaryRevenue,
        otherRevenue: otherRevenue ?? this.otherRevenue,
        ceoCompensationPercent:
            ceoCompensationPercent ?? this.ceoCompensationPercent);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionCategory {
  OrganizationCollectionCategory({
    this.categoryID,
    this.categoryName,
  });

  factory OrganizationCollectionCategory.fromJson(Map<String, dynamic> json) =>
      _$OrganizationCollectionCategoryFromJson(json);

  @JsonKey(name: 'categoryID')
  final int? categoryID;
  @JsonKey(name: 'categoryName')
  final String? categoryName;
  static const fromJsonFactory = _$OrganizationCollectionCategoryFromJson;
  static const toJsonFactory = _$OrganizationCollectionCategoryToJson;
  Map<String, dynamic> toJson() => _$OrganizationCollectionCategoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionCategory &&
            (identical(other.categoryID, categoryID) ||
                const DeepCollectionEquality()
                    .equals(other.categoryID, categoryID)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryID) ^
      const DeepCollectionEquality().hash(categoryName) ^
      runtimeType.hashCode;
}

extension $OrganizationCollectionCategoryExtension
    on OrganizationCollectionCategory {
  OrganizationCollectionCategory copyWith(
      {int? categoryID, String? categoryName}) {
    return OrganizationCollectionCategory(
        categoryID: categoryID ?? this.categoryID,
        categoryName: categoryName ?? this.categoryName);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionCause {
  OrganizationCollectionCause({
    this.causeID,
    this.causeName,
  });

  factory OrganizationCollectionCause.fromJson(Map<String, dynamic> json) =>
      _$OrganizationCollectionCauseFromJson(json);

  @JsonKey(name: 'causeID')
  final String? causeID;
  @JsonKey(name: 'causeName')
  final String? causeName;
  static const fromJsonFactory = _$OrganizationCollectionCauseFromJson;
  static const toJsonFactory = _$OrganizationCollectionCauseToJson;
  Map<String, dynamic> toJson() => _$OrganizationCollectionCauseToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionCause &&
            (identical(other.causeID, causeID) ||
                const DeepCollectionEquality()
                    .equals(other.causeID, causeID)) &&
            (identical(other.causeName, causeName) ||
                const DeepCollectionEquality()
                    .equals(other.causeName, causeName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(causeID) ^
      const DeepCollectionEquality().hash(causeName) ^
      runtimeType.hashCode;
}

extension $OrganizationCollectionCauseExtension on OrganizationCollectionCause {
  OrganizationCollectionCause copyWith({String? causeID, String? causeName}) {
    return OrganizationCollectionCause(
        causeID: causeID ?? this.causeID,
        causeName: causeName ?? this.causeName);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionIrsClassification {
  OrganizationCollectionIrsClassification({
    this.subsection,
    this.foundationStatus,
    this.deductibility,
    this.deductibilityDetail,
    this.deductibilityCode,
    this.nteeCode,
    this.nteeClassification,
    this.nteeLetter,
    this.nteeType,
    this.nteeSuffix,
    this.affiliation,
    this.groupName,
    this.exemptOrgStatus,
    this.exemptOrgStatusCode,
    this.rulingDate,
    this.assetAmount,
    this.incomeAmount,
    this.latest990,
    this.filingRequirement,
    this.accountingPeriod,
    this.classification,
  });

  factory OrganizationCollectionIrsClassification.fromJson(
          Map<String, dynamic> json) =>
      _$OrganizationCollectionIrsClassificationFromJson(json);

  @JsonKey(name: 'subsection')
  final String? subsection;
  @JsonKey(name: 'foundationStatus')
  final String? foundationStatus;
  @JsonKey(
      name: 'deductibility',
      toJson: deductibilityTypeToJson,
      fromJson: deductibilityTypeFromJson)
  final enums.DeductibilityType? deductibility;
  @JsonKey(name: 'deductibilityDetail')
  final String? deductibilityDetail;
  @JsonKey(name: 'deductibilityCode')
  final String? deductibilityCode;
  @JsonKey(name: 'nteeCode')
  final String? nteeCode;
  @JsonKey(name: 'nteeClassification')
  final String? nteeClassification;
  @JsonKey(name: 'nteeLetter')
  final String? nteeLetter;
  @JsonKey(name: 'nteeType')
  final String? nteeType;
  @JsonKey(name: 'nteeSuffix')
  final String? nteeSuffix;
  @JsonKey(name: 'affiliation')
  final String? affiliation;
  @JsonKey(name: 'groupName')
  final String? groupName;
  @JsonKey(name: 'exemptOrgStatus')
  final String? exemptOrgStatus;
  @JsonKey(name: 'exemptOrgStatusCode')
  final String? exemptOrgStatusCode;
  @JsonKey(name: 'rulingDate')
  final String? rulingDate;
  @JsonKey(name: 'assetAmount')
  final int? assetAmount;
  @JsonKey(name: 'incomeAmount')
  final int? incomeAmount;
  @JsonKey(name: 'latest990')
  final String? latest990;
  @JsonKey(name: 'filingRequirement')
  final String? filingRequirement;
  @JsonKey(name: 'accountingPeriod')
  final String? accountingPeriod;
  @JsonKey(name: 'classification')
  final String? classification;
  static const fromJsonFactory =
      _$OrganizationCollectionIrsClassificationFromJson;
  static const toJsonFactory = _$OrganizationCollectionIrsClassificationToJson;
  Map<String, dynamic> toJson() =>
      _$OrganizationCollectionIrsClassificationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionIrsClassification &&
            (identical(other.subsection, subsection) ||
                const DeepCollectionEquality()
                    .equals(other.subsection, subsection)) &&
            (identical(other.foundationStatus, foundationStatus) ||
                const DeepCollectionEquality()
                    .equals(other.foundationStatus, foundationStatus)) &&
            (identical(other.deductibility, deductibility) ||
                const DeepCollectionEquality()
                    .equals(other.deductibility, deductibility)) &&
            (identical(other.deductibilityDetail, deductibilityDetail) ||
                const DeepCollectionEquality()
                    .equals(other.deductibilityDetail, deductibilityDetail)) &&
            (identical(other.deductibilityCode, deductibilityCode) ||
                const DeepCollectionEquality()
                    .equals(other.deductibilityCode, deductibilityCode)) &&
            (identical(other.nteeCode, nteeCode) ||
                const DeepCollectionEquality()
                    .equals(other.nteeCode, nteeCode)) &&
            (identical(other.nteeClassification, nteeClassification) ||
                const DeepCollectionEquality()
                    .equals(other.nteeClassification, nteeClassification)) &&
            (identical(other.nteeLetter, nteeLetter) ||
                const DeepCollectionEquality()
                    .equals(other.nteeLetter, nteeLetter)) &&
            (identical(other.nteeType, nteeType) ||
                const DeepCollectionEquality()
                    .equals(other.nteeType, nteeType)) &&
            (identical(other.nteeSuffix, nteeSuffix) ||
                const DeepCollectionEquality()
                    .equals(other.nteeSuffix, nteeSuffix)) &&
            (identical(other.affiliation, affiliation) ||
                const DeepCollectionEquality()
                    .equals(other.affiliation, affiliation)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.exemptOrgStatus, exemptOrgStatus) ||
                const DeepCollectionEquality()
                    .equals(other.exemptOrgStatus, exemptOrgStatus)) &&
            (identical(other.exemptOrgStatusCode, exemptOrgStatusCode) ||
                const DeepCollectionEquality()
                    .equals(other.exemptOrgStatusCode, exemptOrgStatusCode)) &&
            (identical(other.rulingDate, rulingDate) ||
                const DeepCollectionEquality()
                    .equals(other.rulingDate, rulingDate)) &&
            (identical(other.assetAmount, assetAmount) ||
                const DeepCollectionEquality()
                    .equals(other.assetAmount, assetAmount)) &&
            (identical(other.incomeAmount, incomeAmount) ||
                const DeepCollectionEquality()
                    .equals(other.incomeAmount, incomeAmount)) &&
            (identical(other.latest990, latest990) ||
                const DeepCollectionEquality()
                    .equals(other.latest990, latest990)) &&
            (identical(other.filingRequirement, filingRequirement) ||
                const DeepCollectionEquality()
                    .equals(other.filingRequirement, filingRequirement)) &&
            (identical(other.accountingPeriod, accountingPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.accountingPeriod, accountingPeriod)) &&
            (identical(other.classification, classification) ||
                const DeepCollectionEquality()
                    .equals(other.classification, classification)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(subsection) ^
      const DeepCollectionEquality().hash(foundationStatus) ^
      const DeepCollectionEquality().hash(deductibility) ^
      const DeepCollectionEquality().hash(deductibilityDetail) ^
      const DeepCollectionEquality().hash(deductibilityCode) ^
      const DeepCollectionEquality().hash(nteeCode) ^
      const DeepCollectionEquality().hash(nteeClassification) ^
      const DeepCollectionEquality().hash(nteeLetter) ^
      const DeepCollectionEquality().hash(nteeType) ^
      const DeepCollectionEquality().hash(nteeSuffix) ^
      const DeepCollectionEquality().hash(affiliation) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(exemptOrgStatus) ^
      const DeepCollectionEquality().hash(exemptOrgStatusCode) ^
      const DeepCollectionEquality().hash(rulingDate) ^
      const DeepCollectionEquality().hash(assetAmount) ^
      const DeepCollectionEquality().hash(incomeAmount) ^
      const DeepCollectionEquality().hash(latest990) ^
      const DeepCollectionEquality().hash(filingRequirement) ^
      const DeepCollectionEquality().hash(accountingPeriod) ^
      const DeepCollectionEquality().hash(classification) ^
      runtimeType.hashCode;
}

extension $OrganizationCollectionIrsClassificationExtension
    on OrganizationCollectionIrsClassification {
  OrganizationCollectionIrsClassification copyWith(
      {String? subsection,
      String? foundationStatus,
      enums.DeductibilityType? deductibility,
      String? deductibilityDetail,
      String? deductibilityCode,
      String? nteeCode,
      String? nteeClassification,
      String? nteeLetter,
      String? nteeType,
      String? nteeSuffix,
      String? affiliation,
      String? groupName,
      String? exemptOrgStatus,
      String? exemptOrgStatusCode,
      String? rulingDate,
      int? assetAmount,
      int? incomeAmount,
      String? latest990,
      String? filingRequirement,
      String? accountingPeriod,
      String? classification}) {
    return OrganizationCollectionIrsClassification(
        subsection: subsection ?? this.subsection,
        foundationStatus: foundationStatus ?? this.foundationStatus,
        deductibility: deductibility ?? this.deductibility,
        deductibilityDetail: deductibilityDetail ?? this.deductibilityDetail,
        deductibilityCode: deductibilityCode ?? this.deductibilityCode,
        nteeCode: nteeCode ?? this.nteeCode,
        nteeClassification: nteeClassification ?? this.nteeClassification,
        nteeLetter: nteeLetter ?? this.nteeLetter,
        nteeType: nteeType ?? this.nteeType,
        nteeSuffix: nteeSuffix ?? this.nteeSuffix,
        affiliation: affiliation ?? this.affiliation,
        groupName: groupName ?? this.groupName,
        exemptOrgStatus: exemptOrgStatus ?? this.exemptOrgStatus,
        exemptOrgStatusCode: exemptOrgStatusCode ?? this.exemptOrgStatusCode,
        rulingDate: rulingDate ?? this.rulingDate,
        assetAmount: assetAmount ?? this.assetAmount,
        incomeAmount: incomeAmount ?? this.incomeAmount,
        latest990: latest990 ?? this.latest990,
        filingRequirement: filingRequirement ?? this.filingRequirement,
        accountingPeriod: accountingPeriod ?? this.accountingPeriod,
        classification: classification ?? this.classification);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionMailingAddress {
  OrganizationCollectionMailingAddress({
    this.streetAddress1,
    this.streetAddress2,
    this.city,
    this.stateOrProvince,
    this.postalCode,
    this.country,
  });

  factory OrganizationCollectionMailingAddress.fromJson(
          Map<String, dynamic> json) =>
      _$OrganizationCollectionMailingAddressFromJson(json);

  @JsonKey(name: 'streetAddress1')
  final String? streetAddress1;
  @JsonKey(name: 'streetAddress2')
  final String? streetAddress2;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'stateOrProvince')
  final String? stateOrProvince;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(name: 'country')
  final String? country;
  static const fromJsonFactory = _$OrganizationCollectionMailingAddressFromJson;
  static const toJsonFactory = _$OrganizationCollectionMailingAddressToJson;
  Map<String, dynamic> toJson() =>
      _$OrganizationCollectionMailingAddressToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionMailingAddress &&
            (identical(other.streetAddress1, streetAddress1) ||
                const DeepCollectionEquality()
                    .equals(other.streetAddress1, streetAddress1)) &&
            (identical(other.streetAddress2, streetAddress2) ||
                const DeepCollectionEquality()
                    .equals(other.streetAddress2, streetAddress2)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                const DeepCollectionEquality()
                    .equals(other.stateOrProvince, stateOrProvince)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(streetAddress1) ^
      const DeepCollectionEquality().hash(streetAddress2) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(stateOrProvince) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(country) ^
      runtimeType.hashCode;
}

extension $OrganizationCollectionMailingAddressExtension
    on OrganizationCollectionMailingAddress {
  OrganizationCollectionMailingAddress copyWith(
      {String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? stateOrProvince,
      String? postalCode,
      String? country}) {
    return OrganizationCollectionMailingAddress(
        streetAddress1: streetAddress1 ?? this.streetAddress1,
        streetAddress2: streetAddress2 ?? this.streetAddress2,
        city: city ?? this.city,
        stateOrProvince: stateOrProvince ?? this.stateOrProvince,
        postalCode: postalCode ?? this.postalCode,
        country: country ?? this.country);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionDonationAddress {
  OrganizationCollectionDonationAddress({
    this.streetAddress1,
    this.streetAddress2,
    this.city,
    this.stateOrProvince,
    this.postalCode,
    this.country,
  });

  factory OrganizationCollectionDonationAddress.fromJson(
          Map<String, dynamic> json) =>
      _$OrganizationCollectionDonationAddressFromJson(json);

  @JsonKey(name: 'streetAddress1')
  final String? streetAddress1;
  @JsonKey(name: 'streetAddress2')
  final String? streetAddress2;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'stateOrProvince')
  final String? stateOrProvince;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(name: 'country')
  final String? country;
  static const fromJsonFactory =
      _$OrganizationCollectionDonationAddressFromJson;
  static const toJsonFactory = _$OrganizationCollectionDonationAddressToJson;
  Map<String, dynamic> toJson() =>
      _$OrganizationCollectionDonationAddressToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionDonationAddress &&
            (identical(other.streetAddress1, streetAddress1) ||
                const DeepCollectionEquality()
                    .equals(other.streetAddress1, streetAddress1)) &&
            (identical(other.streetAddress2, streetAddress2) ||
                const DeepCollectionEquality()
                    .equals(other.streetAddress2, streetAddress2)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                const DeepCollectionEquality()
                    .equals(other.stateOrProvince, stateOrProvince)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(streetAddress1) ^
      const DeepCollectionEquality().hash(streetAddress2) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(stateOrProvince) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(country) ^
      runtimeType.hashCode;
}

extension $OrganizationCollectionDonationAddressExtension
    on OrganizationCollectionDonationAddress {
  OrganizationCollectionDonationAddress copyWith(
      {String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? stateOrProvince,
      String? postalCode,
      String? country}) {
    return OrganizationCollectionDonationAddress(
        streetAddress1: streetAddress1 ?? this.streetAddress1,
        streetAddress2: streetAddress2 ?? this.streetAddress2,
        city: city ?? this.city,
        stateOrProvince: stateOrProvince ?? this.stateOrProvince,
        postalCode: postalCode ?? this.postalCode,
        country: country ?? this.country);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionAdvisories {
  OrganizationCollectionAdvisories({
    this.severity,
    this.active,
  });

  factory OrganizationCollectionAdvisories.fromJson(
          Map<String, dynamic> json) =>
      _$OrganizationCollectionAdvisoriesFromJson(json);

  @JsonKey(name: 'severity', toJson: severityToJson, fromJson: severityFromJson)
  final enums.Severity? severity;
  @JsonKey(name: 'active')
  final AdvisoryCollectionLink? active;
  static const fromJsonFactory = _$OrganizationCollectionAdvisoriesFromJson;
  static const toJsonFactory = _$OrganizationCollectionAdvisoriesToJson;
  Map<String, dynamic> toJson() =>
      _$OrganizationCollectionAdvisoriesToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionAdvisories &&
            (identical(other.severity, severity) ||
                const DeepCollectionEquality()
                    .equals(other.severity, severity)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(severity) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $OrganizationCollectionAdvisoriesExtension
    on OrganizationCollectionAdvisories {
  OrganizationCollectionAdvisories copyWith(
      {enums.Severity? severity, AdvisoryCollectionLink? active}) {
    return OrganizationCollectionAdvisories(
        severity: severity ?? this.severity, active: active ?? this.active);
  }
}

@JsonSerializable(explicitToJson: true)
class AdvisoryCollectionLink {
  AdvisoryCollectionLink({
    this.links,
  });

  factory AdvisoryCollectionLink.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryCollectionLinkFromJson(json);

  @JsonKey(name: '_links')
  final RapidLinksMap? links;
  static const fromJsonFactory = _$AdvisoryCollectionLinkFromJson;
  static const toJsonFactory = _$AdvisoryCollectionLinkToJson;
  Map<String, dynamic> toJson() => _$AdvisoryCollectionLinkToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdvisoryCollectionLink &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(links) ^ runtimeType.hashCode;
}

extension $AdvisoryCollectionLinkExtension on AdvisoryCollectionLink {
  AdvisoryCollectionLink copyWith({RapidLinksMap? links}) {
    return AdvisoryCollectionLink(links: links ?? this.links);
  }
}

@JsonSerializable(explicitToJson: true)
class RapidLinksMap {
  RapidLinksMap();

  factory RapidLinksMap.fromJson(Map<String, dynamic> json) =>
      _$RapidLinksMapFromJson(json);

  static const fromJsonFactory = _$RapidLinksMapFromJson;
  static const toJsonFactory = _$RapidLinksMapToJson;
  Map<String, dynamic> toJson() => _$RapidLinksMapToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class OrganizationLink {
  OrganizationLink({
    this.ein,
    this.charityName,
    this.links,
  });

  factory OrganizationLink.fromJson(Map<String, dynamic> json) =>
      _$OrganizationLinkFromJson(json);

  @JsonKey(name: 'ein')
  final String? ein;
  @JsonKey(name: 'charityName')
  final String? charityName;
  @JsonKey(name: '_links')
  final RapidLinksMap? links;
  static const fromJsonFactory = _$OrganizationLinkFromJson;
  static const toJsonFactory = _$OrganizationLinkToJson;
  Map<String, dynamic> toJson() => _$OrganizationLinkToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationLink &&
            (identical(other.ein, ein) ||
                const DeepCollectionEquality().equals(other.ein, ein)) &&
            (identical(other.charityName, charityName) ||
                const DeepCollectionEquality()
                    .equals(other.charityName, charityName)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ein) ^
      const DeepCollectionEquality().hash(charityName) ^
      const DeepCollectionEquality().hash(links) ^
      runtimeType.hashCode;
}

extension $OrganizationLinkExtension on OrganizationLink {
  OrganizationLink copyWith(
      {String? ein, String? charityName, RapidLinksMap? links}) {
    return OrganizationLink(
        ein: ein ?? this.ein,
        charityName: charityName ?? this.charityName,
        links: links ?? this.links);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationObject {
  OrganizationObject({
    required this.ein,
    this.orgID,
    this.charityName,
    this.tagLine,
    this.websiteURL,
    this.charityNavigatorURL,
    this.mission,
    this.phoneNumber,
    this.generalEmail,
    this.category,
    this.cause,
    this.irsClassification,
    this.mailingAddress,
    this.donationAddress,
    this.activeAdvisories,
    this.removedAdvisories,
    this.currentBoardChair,
    this.currentCEO,
    this.currentRating,
    this.ratingHistory,
  });

  factory OrganizationObject.fromJson(Map<String, dynamic> json) =>
      _$OrganizationObjectFromJson(json);

  @JsonKey(name: 'ein')
  final String ein;
  @JsonKey(name: 'orgID')
  final int? orgID;
  @JsonKey(name: 'charityName')
  final String? charityName;
  @JsonKey(name: 'tagLine')
  final String? tagLine;
  @JsonKey(name: 'websiteURL')
  final String? websiteURL;
  @JsonKey(name: 'charityNavigatorURL')
  final String? charityNavigatorURL;
  @JsonKey(name: 'mission')
  final String? mission;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'generalEmail')
  final String? generalEmail;
  @JsonKey(name: 'category')
  final OrganizationObjectCategory? category;
  @JsonKey(name: 'cause')
  final OrganizationObjectCause? cause;
  @JsonKey(name: 'irsClassification')
  final IRSClassification? irsClassification;
  @JsonKey(name: 'mailingAddress')
  final Address? mailingAddress;
  @JsonKey(name: 'donationAddress')
  final Address? donationAddress;
  @JsonKey(name: 'activeAdvisories')
  final AdvisoryCollectionLink? activeAdvisories;
  @JsonKey(name: 'removedAdvisories')
  final AdvisoryCollectionLink? removedAdvisories;
  @JsonKey(name: 'currentBoardChair')
  final Representative? currentBoardChair;
  @JsonKey(name: 'currentCEO')
  final Representative? currentCEO;
  @JsonKey(name: 'currentRating')
  final RatingLink? currentRating;
  @JsonKey(name: 'ratingHistory')
  final RatingCollectionLink? ratingHistory;
  static const fromJsonFactory = _$OrganizationObjectFromJson;
  static const toJsonFactory = _$OrganizationObjectToJson;
  Map<String, dynamic> toJson() => _$OrganizationObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationObject &&
            (identical(other.ein, ein) ||
                const DeepCollectionEquality().equals(other.ein, ein)) &&
            (identical(other.orgID, orgID) ||
                const DeepCollectionEquality().equals(other.orgID, orgID)) &&
            (identical(other.charityName, charityName) ||
                const DeepCollectionEquality()
                    .equals(other.charityName, charityName)) &&
            (identical(other.tagLine, tagLine) ||
                const DeepCollectionEquality()
                    .equals(other.tagLine, tagLine)) &&
            (identical(other.websiteURL, websiteURL) ||
                const DeepCollectionEquality()
                    .equals(other.websiteURL, websiteURL)) &&
            (identical(other.charityNavigatorURL, charityNavigatorURL) ||
                const DeepCollectionEquality()
                    .equals(other.charityNavigatorURL, charityNavigatorURL)) &&
            (identical(other.mission, mission) ||
                const DeepCollectionEquality()
                    .equals(other.mission, mission)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.generalEmail, generalEmail) ||
                const DeepCollectionEquality()
                    .equals(other.generalEmail, generalEmail)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.cause, cause) ||
                const DeepCollectionEquality().equals(other.cause, cause)) &&
            (identical(other.irsClassification, irsClassification) ||
                const DeepCollectionEquality()
                    .equals(other.irsClassification, irsClassification)) &&
            (identical(other.mailingAddress, mailingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.mailingAddress, mailingAddress)) &&
            (identical(other.donationAddress, donationAddress) ||
                const DeepCollectionEquality()
                    .equals(other.donationAddress, donationAddress)) &&
            (identical(other.activeAdvisories, activeAdvisories) ||
                const DeepCollectionEquality()
                    .equals(other.activeAdvisories, activeAdvisories)) &&
            (identical(other.removedAdvisories, removedAdvisories) ||
                const DeepCollectionEquality()
                    .equals(other.removedAdvisories, removedAdvisories)) &&
            (identical(other.currentBoardChair, currentBoardChair) ||
                const DeepCollectionEquality()
                    .equals(other.currentBoardChair, currentBoardChair)) &&
            (identical(other.currentCEO, currentCEO) ||
                const DeepCollectionEquality()
                    .equals(other.currentCEO, currentCEO)) &&
            (identical(other.currentRating, currentRating) ||
                const DeepCollectionEquality()
                    .equals(other.currentRating, currentRating)) &&
            (identical(other.ratingHistory, ratingHistory) ||
                const DeepCollectionEquality()
                    .equals(other.ratingHistory, ratingHistory)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ein) ^
      const DeepCollectionEquality().hash(orgID) ^
      const DeepCollectionEquality().hash(charityName) ^
      const DeepCollectionEquality().hash(tagLine) ^
      const DeepCollectionEquality().hash(websiteURL) ^
      const DeepCollectionEquality().hash(charityNavigatorURL) ^
      const DeepCollectionEquality().hash(mission) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(generalEmail) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(cause) ^
      const DeepCollectionEquality().hash(irsClassification) ^
      const DeepCollectionEquality().hash(mailingAddress) ^
      const DeepCollectionEquality().hash(donationAddress) ^
      const DeepCollectionEquality().hash(activeAdvisories) ^
      const DeepCollectionEquality().hash(removedAdvisories) ^
      const DeepCollectionEquality().hash(currentBoardChair) ^
      const DeepCollectionEquality().hash(currentCEO) ^
      const DeepCollectionEquality().hash(currentRating) ^
      const DeepCollectionEquality().hash(ratingHistory) ^
      runtimeType.hashCode;
}

extension $OrganizationObjectExtension on OrganizationObject {
  OrganizationObject copyWith(
      {String? ein,
      int? orgID,
      String? charityName,
      String? tagLine,
      String? websiteURL,
      String? charityNavigatorURL,
      String? mission,
      String? phoneNumber,
      String? generalEmail,
      OrganizationObjectCategory? category,
      OrganizationObjectCause? cause,
      IRSClassification? irsClassification,
      Address? mailingAddress,
      Address? donationAddress,
      AdvisoryCollectionLink? activeAdvisories,
      AdvisoryCollectionLink? removedAdvisories,
      Representative? currentBoardChair,
      Representative? currentCEO,
      RatingLink? currentRating,
      RatingCollectionLink? ratingHistory}) {
    return OrganizationObject(
        ein: ein ?? this.ein,
        orgID: orgID ?? this.orgID,
        charityName: charityName ?? this.charityName,
        tagLine: tagLine ?? this.tagLine,
        websiteURL: websiteURL ?? this.websiteURL,
        charityNavigatorURL: charityNavigatorURL ?? this.charityNavigatorURL,
        mission: mission ?? this.mission,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        generalEmail: generalEmail ?? this.generalEmail,
        category: category ?? this.category,
        cause: cause ?? this.cause,
        irsClassification: irsClassification ?? this.irsClassification,
        mailingAddress: mailingAddress ?? this.mailingAddress,
        donationAddress: donationAddress ?? this.donationAddress,
        activeAdvisories: activeAdvisories ?? this.activeAdvisories,
        removedAdvisories: removedAdvisories ?? this.removedAdvisories,
        currentBoardChair: currentBoardChair ?? this.currentBoardChair,
        currentCEO: currentCEO ?? this.currentCEO,
        currentRating: currentRating ?? this.currentRating,
        ratingHistory: ratingHistory ?? this.ratingHistory);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationObjectCategory {
  OrganizationObjectCategory({
    this.categoryID,
    this.categoryName,
    this.image,
    this.charityNavigatorURL,
  });

  factory OrganizationObjectCategory.fromJson(Map<String, dynamic> json) =>
      _$OrganizationObjectCategoryFromJson(json);

  @JsonKey(name: 'categoryID')
  final int? categoryID;
  @JsonKey(name: 'categoryName')
  final String? categoryName;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'charityNavigatorURL')
  final String? charityNavigatorURL;
  static const fromJsonFactory = _$OrganizationObjectCategoryFromJson;
  static const toJsonFactory = _$OrganizationObjectCategoryToJson;
  Map<String, dynamic> toJson() => _$OrganizationObjectCategoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationObjectCategory &&
            (identical(other.categoryID, categoryID) ||
                const DeepCollectionEquality()
                    .equals(other.categoryID, categoryID)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.charityNavigatorURL, charityNavigatorURL) ||
                const DeepCollectionEquality()
                    .equals(other.charityNavigatorURL, charityNavigatorURL)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryID) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(charityNavigatorURL) ^
      runtimeType.hashCode;
}

extension $OrganizationObjectCategoryExtension on OrganizationObjectCategory {
  OrganizationObjectCategory copyWith(
      {int? categoryID,
      String? categoryName,
      String? image,
      String? charityNavigatorURL}) {
    return OrganizationObjectCategory(
        categoryID: categoryID ?? this.categoryID,
        categoryName: categoryName ?? this.categoryName,
        image: image ?? this.image,
        charityNavigatorURL: charityNavigatorURL ?? this.charityNavigatorURL);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationObjectCause {
  OrganizationObjectCause({
    this.causeID,
    this.causeName,
    this.image,
    this.charityNavigatorURL,
  });

  factory OrganizationObjectCause.fromJson(Map<String, dynamic> json) =>
      _$OrganizationObjectCauseFromJson(json);

  @JsonKey(name: 'causeID')
  final String? causeID;
  @JsonKey(name: 'causeName')
  final String? causeName;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'charityNavigatorURL')
  final String? charityNavigatorURL;
  static const fromJsonFactory = _$OrganizationObjectCauseFromJson;
  static const toJsonFactory = _$OrganizationObjectCauseToJson;
  Map<String, dynamic> toJson() => _$OrganizationObjectCauseToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationObjectCause &&
            (identical(other.causeID, causeID) ||
                const DeepCollectionEquality()
                    .equals(other.causeID, causeID)) &&
            (identical(other.causeName, causeName) ||
                const DeepCollectionEquality()
                    .equals(other.causeName, causeName)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.charityNavigatorURL, charityNavigatorURL) ||
                const DeepCollectionEquality()
                    .equals(other.charityNavigatorURL, charityNavigatorURL)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(causeID) ^
      const DeepCollectionEquality().hash(causeName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(charityNavigatorURL) ^
      runtimeType.hashCode;
}

extension $OrganizationObjectCauseExtension on OrganizationObjectCause {
  OrganizationObjectCause copyWith(
      {String? causeID,
      String? causeName,
      String? image,
      String? charityNavigatorURL}) {
    return OrganizationObjectCause(
        causeID: causeID ?? this.causeID,
        causeName: causeName ?? this.causeName,
        image: image ?? this.image,
        charityNavigatorURL: charityNavigatorURL ?? this.charityNavigatorURL);
  }
}

@JsonSerializable(explicitToJson: true)
class IRSClassification {
  IRSClassification({
    this.subsection,
    this.foundationStatus,
    this.deductibility,
    this.deductibilityDetail,
    this.deductibilityCode,
    this.nteeCode,
    this.nteeClassification,
    this.nteeLetter,
    this.nteeType,
    this.nteeSuffix,
    this.affiliation,
    this.groupName,
    this.exemptOrgStatus,
    this.exemptOrgStatusCode,
    this.rulingDate,
    this.assetAmount,
    this.incomeAmount,
    this.latest990,
    this.filingRequirement,
    this.accountingPeriod,
    this.classification,
  });

  factory IRSClassification.fromJson(Map<String, dynamic> json) =>
      _$IRSClassificationFromJson(json);

  @JsonKey(name: 'subsection')
  final String? subsection;
  @JsonKey(name: 'foundationStatus')
  final String? foundationStatus;
  @JsonKey(
      name: 'deductibility',
      toJson: deductibilityTypeToJson,
      fromJson: deductibilityTypeFromJson)
  final enums.DeductibilityType? deductibility;
  @JsonKey(name: 'deductibilityDetail')
  final String? deductibilityDetail;
  @JsonKey(name: 'deductibilityCode')
  final String? deductibilityCode;
  @JsonKey(name: 'nteeCode')
  final String? nteeCode;
  @JsonKey(name: 'nteeClassification')
  final String? nteeClassification;
  @JsonKey(name: 'nteeLetter')
  final String? nteeLetter;
  @JsonKey(name: 'nteeType')
  final String? nteeType;
  @JsonKey(name: 'nteeSuffix')
  final String? nteeSuffix;
  @JsonKey(name: 'affiliation')
  final String? affiliation;
  @JsonKey(name: 'groupName')
  final String? groupName;
  @JsonKey(name: 'exemptOrgStatus')
  final String? exemptOrgStatus;
  @JsonKey(name: 'exemptOrgStatusCode')
  final String? exemptOrgStatusCode;
  @JsonKey(name: 'rulingDate')
  final String? rulingDate;
  @JsonKey(name: 'assetAmount')
  final int? assetAmount;
  @JsonKey(name: 'incomeAmount')
  final int? incomeAmount;
  @JsonKey(name: 'latest990')
  final String? latest990;
  @JsonKey(name: 'filingRequirement')
  final String? filingRequirement;
  @JsonKey(name: 'accountingPeriod')
  final String? accountingPeriod;
  @JsonKey(name: 'classification')
  final String? classification;
  static const fromJsonFactory = _$IRSClassificationFromJson;
  static const toJsonFactory = _$IRSClassificationToJson;
  Map<String, dynamic> toJson() => _$IRSClassificationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IRSClassification &&
            (identical(other.subsection, subsection) ||
                const DeepCollectionEquality()
                    .equals(other.subsection, subsection)) &&
            (identical(other.foundationStatus, foundationStatus) ||
                const DeepCollectionEquality()
                    .equals(other.foundationStatus, foundationStatus)) &&
            (identical(other.deductibility, deductibility) ||
                const DeepCollectionEquality()
                    .equals(other.deductibility, deductibility)) &&
            (identical(other.deductibilityDetail, deductibilityDetail) ||
                const DeepCollectionEquality()
                    .equals(other.deductibilityDetail, deductibilityDetail)) &&
            (identical(other.deductibilityCode, deductibilityCode) ||
                const DeepCollectionEquality()
                    .equals(other.deductibilityCode, deductibilityCode)) &&
            (identical(other.nteeCode, nteeCode) ||
                const DeepCollectionEquality()
                    .equals(other.nteeCode, nteeCode)) &&
            (identical(other.nteeClassification, nteeClassification) ||
                const DeepCollectionEquality()
                    .equals(other.nteeClassification, nteeClassification)) &&
            (identical(other.nteeLetter, nteeLetter) ||
                const DeepCollectionEquality()
                    .equals(other.nteeLetter, nteeLetter)) &&
            (identical(other.nteeType, nteeType) ||
                const DeepCollectionEquality()
                    .equals(other.nteeType, nteeType)) &&
            (identical(other.nteeSuffix, nteeSuffix) ||
                const DeepCollectionEquality()
                    .equals(other.nteeSuffix, nteeSuffix)) &&
            (identical(other.affiliation, affiliation) ||
                const DeepCollectionEquality()
                    .equals(other.affiliation, affiliation)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.exemptOrgStatus, exemptOrgStatus) ||
                const DeepCollectionEquality()
                    .equals(other.exemptOrgStatus, exemptOrgStatus)) &&
            (identical(other.exemptOrgStatusCode, exemptOrgStatusCode) ||
                const DeepCollectionEquality()
                    .equals(other.exemptOrgStatusCode, exemptOrgStatusCode)) &&
            (identical(other.rulingDate, rulingDate) ||
                const DeepCollectionEquality()
                    .equals(other.rulingDate, rulingDate)) &&
            (identical(other.assetAmount, assetAmount) ||
                const DeepCollectionEquality()
                    .equals(other.assetAmount, assetAmount)) &&
            (identical(other.incomeAmount, incomeAmount) ||
                const DeepCollectionEquality()
                    .equals(other.incomeAmount, incomeAmount)) &&
            (identical(other.latest990, latest990) ||
                const DeepCollectionEquality()
                    .equals(other.latest990, latest990)) &&
            (identical(other.filingRequirement, filingRequirement) ||
                const DeepCollectionEquality()
                    .equals(other.filingRequirement, filingRequirement)) &&
            (identical(other.accountingPeriod, accountingPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.accountingPeriod, accountingPeriod)) &&
            (identical(other.classification, classification) ||
                const DeepCollectionEquality()
                    .equals(other.classification, classification)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(subsection) ^
      const DeepCollectionEquality().hash(foundationStatus) ^
      const DeepCollectionEquality().hash(deductibility) ^
      const DeepCollectionEquality().hash(deductibilityDetail) ^
      const DeepCollectionEquality().hash(deductibilityCode) ^
      const DeepCollectionEquality().hash(nteeCode) ^
      const DeepCollectionEquality().hash(nteeClassification) ^
      const DeepCollectionEquality().hash(nteeLetter) ^
      const DeepCollectionEquality().hash(nteeType) ^
      const DeepCollectionEquality().hash(nteeSuffix) ^
      const DeepCollectionEquality().hash(affiliation) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(exemptOrgStatus) ^
      const DeepCollectionEquality().hash(exemptOrgStatusCode) ^
      const DeepCollectionEquality().hash(rulingDate) ^
      const DeepCollectionEquality().hash(assetAmount) ^
      const DeepCollectionEquality().hash(incomeAmount) ^
      const DeepCollectionEquality().hash(latest990) ^
      const DeepCollectionEquality().hash(filingRequirement) ^
      const DeepCollectionEquality().hash(accountingPeriod) ^
      const DeepCollectionEquality().hash(classification) ^
      runtimeType.hashCode;
}

extension $IRSClassificationExtension on IRSClassification {
  IRSClassification copyWith(
      {String? subsection,
      String? foundationStatus,
      enums.DeductibilityType? deductibility,
      String? deductibilityDetail,
      String? deductibilityCode,
      String? nteeCode,
      String? nteeClassification,
      String? nteeLetter,
      String? nteeType,
      String? nteeSuffix,
      String? affiliation,
      String? groupName,
      String? exemptOrgStatus,
      String? exemptOrgStatusCode,
      String? rulingDate,
      int? assetAmount,
      int? incomeAmount,
      String? latest990,
      String? filingRequirement,
      String? accountingPeriod,
      String? classification}) {
    return IRSClassification(
        subsection: subsection ?? this.subsection,
        foundationStatus: foundationStatus ?? this.foundationStatus,
        deductibility: deductibility ?? this.deductibility,
        deductibilityDetail: deductibilityDetail ?? this.deductibilityDetail,
        deductibilityCode: deductibilityCode ?? this.deductibilityCode,
        nteeCode: nteeCode ?? this.nteeCode,
        nteeClassification: nteeClassification ?? this.nteeClassification,
        nteeLetter: nteeLetter ?? this.nteeLetter,
        nteeType: nteeType ?? this.nteeType,
        nteeSuffix: nteeSuffix ?? this.nteeSuffix,
        affiliation: affiliation ?? this.affiliation,
        groupName: groupName ?? this.groupName,
        exemptOrgStatus: exemptOrgStatus ?? this.exemptOrgStatus,
        exemptOrgStatusCode: exemptOrgStatusCode ?? this.exemptOrgStatusCode,
        rulingDate: rulingDate ?? this.rulingDate,
        assetAmount: assetAmount ?? this.assetAmount,
        incomeAmount: incomeAmount ?? this.incomeAmount,
        latest990: latest990 ?? this.latest990,
        filingRequirement: filingRequirement ?? this.filingRequirement,
        accountingPeriod: accountingPeriod ?? this.accountingPeriod,
        classification: classification ?? this.classification);
  }
}

@JsonSerializable(explicitToJson: true)
class Address {
  Address({
    this.streetAddress1,
    this.streetAddress2,
    this.city,
    this.stateOrProvince,
    this.postalCode,
    this.country,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  @JsonKey(name: 'streetAddress1')
  final String? streetAddress1;
  @JsonKey(name: 'streetAddress2')
  final String? streetAddress2;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'stateOrProvince')
  final String? stateOrProvince;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(name: 'country')
  final String? country;
  static const fromJsonFactory = _$AddressFromJson;
  static const toJsonFactory = _$AddressToJson;
  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Address &&
            (identical(other.streetAddress1, streetAddress1) ||
                const DeepCollectionEquality()
                    .equals(other.streetAddress1, streetAddress1)) &&
            (identical(other.streetAddress2, streetAddress2) ||
                const DeepCollectionEquality()
                    .equals(other.streetAddress2, streetAddress2)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                const DeepCollectionEquality()
                    .equals(other.stateOrProvince, stateOrProvince)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(streetAddress1) ^
      const DeepCollectionEquality().hash(streetAddress2) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(stateOrProvince) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(country) ^
      runtimeType.hashCode;
}

extension $AddressExtension on Address {
  Address copyWith(
      {String? streetAddress1,
      String? streetAddress2,
      String? city,
      String? stateOrProvince,
      String? postalCode,
      String? country}) {
    return Address(
        streetAddress1: streetAddress1 ?? this.streetAddress1,
        streetAddress2: streetAddress2 ?? this.streetAddress2,
        city: city ?? this.city,
        stateOrProvince: stateOrProvince ?? this.stateOrProvince,
        postalCode: postalCode ?? this.postalCode,
        country: country ?? this.country);
  }
}

@JsonSerializable(explicitToJson: true)
class Representative {
  Representative({
    this.name,
    this.title,
  });

  factory Representative.fromJson(Map<String, dynamic> json) =>
      _$RepresentativeFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'title')
  final String? title;
  static const fromJsonFactory = _$RepresentativeFromJson;
  static const toJsonFactory = _$RepresentativeToJson;
  Map<String, dynamic> toJson() => _$RepresentativeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Representative &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(title) ^
      runtimeType.hashCode;
}

extension $RepresentativeExtension on Representative {
  Representative copyWith({String? name, String? title}) {
    return Representative(name: name ?? this.name, title: title ?? this.title);
  }
}

@JsonSerializable(explicitToJson: true)
class RatingLink {
  RatingLink({
    this.ratingID,
    this.score,
    this.rating,
    this.publicationDate,
    this.ratingImage,
    this.form990,
    required this.links,
  });

  factory RatingLink.fromJson(Map<String, dynamic> json) =>
      _$RatingLinkFromJson(json);

  @JsonKey(name: 'ratingID')
  final String? ratingID;
  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'rating')
  final int? rating;
  @JsonKey(name: 'publicationDate', toJson: _dateToJson)
  final DateTime? publicationDate;
  @JsonKey(name: 'ratingImage')
  final IconSet? ratingImage;
  @JsonKey(name: 'form990')
  final Form990? form990;
  @JsonKey(name: '_links')
  final RapidLinksMap links;
  static const fromJsonFactory = _$RatingLinkFromJson;
  static const toJsonFactory = _$RatingLinkToJson;
  Map<String, dynamic> toJson() => _$RatingLinkToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingLink &&
            (identical(other.ratingID, ratingID) ||
                const DeepCollectionEquality()
                    .equals(other.ratingID, ratingID)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.publicationDate, publicationDate) ||
                const DeepCollectionEquality()
                    .equals(other.publicationDate, publicationDate)) &&
            (identical(other.ratingImage, ratingImage) ||
                const DeepCollectionEquality()
                    .equals(other.ratingImage, ratingImage)) &&
            (identical(other.form990, form990) ||
                const DeepCollectionEquality()
                    .equals(other.form990, form990)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ratingID) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(publicationDate) ^
      const DeepCollectionEquality().hash(ratingImage) ^
      const DeepCollectionEquality().hash(form990) ^
      const DeepCollectionEquality().hash(links) ^
      runtimeType.hashCode;
}

extension $RatingLinkExtension on RatingLink {
  RatingLink copyWith(
      {String? ratingID,
      double? score,
      int? rating,
      DateTime? publicationDate,
      IconSet? ratingImage,
      Form990? form990,
      RapidLinksMap? links}) {
    return RatingLink(
        ratingID: ratingID ?? this.ratingID,
        score: score ?? this.score,
        rating: rating ?? this.rating,
        publicationDate: publicationDate ?? this.publicationDate,
        ratingImage: ratingImage ?? this.ratingImage,
        form990: form990 ?? this.form990,
        links: links ?? this.links);
  }
}

@JsonSerializable(explicitToJson: true)
class RatingCollectionLink {
  RatingCollectionLink({
    required this.links,
  });

  factory RatingCollectionLink.fromJson(Map<String, dynamic> json) =>
      _$RatingCollectionLinkFromJson(json);

  @JsonKey(name: '_links')
  final RapidLinksMap links;
  static const fromJsonFactory = _$RatingCollectionLinkFromJson;
  static const toJsonFactory = _$RatingCollectionLinkToJson;
  Map<String, dynamic> toJson() => _$RatingCollectionLinkToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingCollectionLink &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(links) ^ runtimeType.hashCode;
}

extension $RatingCollectionLinkExtension on RatingCollectionLink {
  RatingCollectionLink copyWith({RapidLinksMap? links}) {
    return RatingCollectionLink(links: links ?? this.links);
  }
}

typedef RatingCollection = List<RatingLink>;

@JsonSerializable(explicitToJson: true)
class RatingObject {
  RatingObject({
    this.ratingID,
    this.score,
    this.rating,
    this.publicationDate,
    this.referenceOrganization,
    required this.includedOrganizations,
    this.ratingImage,
    this.form990,
    this.financialRating,
    this.accountabilityRating,
  });

  factory RatingObject.fromJson(Map<String, dynamic> json) =>
      _$RatingObjectFromJson(json);

  @JsonKey(name: 'ratingID')
  final String? ratingID;
  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'rating')
  final int? rating;
  @JsonKey(name: 'publicationDate', toJson: _dateToJson)
  final DateTime? publicationDate;
  @JsonKey(name: 'referenceOrganization')
  final OrganizationLink? referenceOrganization;
  @JsonKey(name: 'includedOrganizations', defaultValue: <OrganizationLink>[])
  final List<OrganizationLink> includedOrganizations;
  @JsonKey(name: 'ratingImage')
  final IconSet? ratingImage;
  @JsonKey(name: 'form990')
  final Form990? form990;
  @JsonKey(name: 'financialRating')
  final FinancialRating? financialRating;
  @JsonKey(name: 'accountabilityRating')
  final AccountabilityRating? accountabilityRating;
  static const fromJsonFactory = _$RatingObjectFromJson;
  static const toJsonFactory = _$RatingObjectToJson;
  Map<String, dynamic> toJson() => _$RatingObjectToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingObject &&
            (identical(other.ratingID, ratingID) ||
                const DeepCollectionEquality()
                    .equals(other.ratingID, ratingID)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.publicationDate, publicationDate) ||
                const DeepCollectionEquality()
                    .equals(other.publicationDate, publicationDate)) &&
            (identical(other.referenceOrganization, referenceOrganization) ||
                const DeepCollectionEquality().equals(
                    other.referenceOrganization, referenceOrganization)) &&
            (identical(other.includedOrganizations, includedOrganizations) ||
                const DeepCollectionEquality().equals(
                    other.includedOrganizations, includedOrganizations)) &&
            (identical(other.ratingImage, ratingImage) ||
                const DeepCollectionEquality()
                    .equals(other.ratingImage, ratingImage)) &&
            (identical(other.form990, form990) ||
                const DeepCollectionEquality()
                    .equals(other.form990, form990)) &&
            (identical(other.financialRating, financialRating) ||
                const DeepCollectionEquality()
                    .equals(other.financialRating, financialRating)) &&
            (identical(other.accountabilityRating, accountabilityRating) ||
                const DeepCollectionEquality()
                    .equals(other.accountabilityRating, accountabilityRating)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ratingID) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(publicationDate) ^
      const DeepCollectionEquality().hash(referenceOrganization) ^
      const DeepCollectionEquality().hash(includedOrganizations) ^
      const DeepCollectionEquality().hash(ratingImage) ^
      const DeepCollectionEquality().hash(form990) ^
      const DeepCollectionEquality().hash(financialRating) ^
      const DeepCollectionEquality().hash(accountabilityRating) ^
      runtimeType.hashCode;
}

extension $RatingObjectExtension on RatingObject {
  RatingObject copyWith(
      {String? ratingID,
      double? score,
      int? rating,
      DateTime? publicationDate,
      OrganizationLink? referenceOrganization,
      List<OrganizationLink>? includedOrganizations,
      IconSet? ratingImage,
      Form990? form990,
      FinancialRating? financialRating,
      AccountabilityRating? accountabilityRating}) {
    return RatingObject(
        ratingID: ratingID ?? this.ratingID,
        score: score ?? this.score,
        rating: rating ?? this.rating,
        publicationDate: publicationDate ?? this.publicationDate,
        referenceOrganization:
            referenceOrganization ?? this.referenceOrganization,
        includedOrganizations:
            includedOrganizations ?? this.includedOrganizations,
        ratingImage: ratingImage ?? this.ratingImage,
        form990: form990 ?? this.form990,
        financialRating: financialRating ?? this.financialRating,
        accountabilityRating:
            accountabilityRating ?? this.accountabilityRating);
  }
}

@JsonSerializable(explicitToJson: true)
class FinancialRating {
  FinancialRating({
    this.score,
    this.rating,
    this.performanceMetrics,
  });

  factory FinancialRating.fromJson(Map<String, dynamic> json) =>
      _$FinancialRatingFromJson(json);

  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'rating')
  final int? rating;
  @JsonKey(name: 'performanceMetrics')
  final PerformanceMetrics? performanceMetrics;
  static const fromJsonFactory = _$FinancialRatingFromJson;
  static const toJsonFactory = _$FinancialRatingToJson;
  Map<String, dynamic> toJson() => _$FinancialRatingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FinancialRating &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.performanceMetrics, performanceMetrics) ||
                const DeepCollectionEquality()
                    .equals(other.performanceMetrics, performanceMetrics)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(performanceMetrics) ^
      runtimeType.hashCode;
}

extension $FinancialRatingExtension on FinancialRating {
  FinancialRating copyWith(
      {double? score, int? rating, PerformanceMetrics? performanceMetrics}) {
    return FinancialRating(
        score: score ?? this.score,
        rating: rating ?? this.rating,
        performanceMetrics: performanceMetrics ?? this.performanceMetrics);
  }
}

@JsonSerializable(explicitToJson: true)
class PerformanceMetrics {
  PerformanceMetrics({
    this.fundraisingEfficiency,
    this.fundraisingExpensesRatio,
    this.programExpensesGrowth,
    this.programExpensesRatio,
    this.administrationExpensesRatio,
    this.liabilitiesToAssetsRatio,
    this.workingCapitalRatio,
    this.primaryRevenueGrowth,
  });

  factory PerformanceMetrics.fromJson(Map<String, dynamic> json) =>
      _$PerformanceMetricsFromJson(json);

  @JsonKey(name: 'fundraisingEfficiency')
  final double? fundraisingEfficiency;
  @JsonKey(name: 'fundraisingExpensesRatio')
  final double? fundraisingExpensesRatio;
  @JsonKey(name: 'programExpensesGrowth')
  final double? programExpensesGrowth;
  @JsonKey(name: 'programExpensesRatio')
  final double? programExpensesRatio;
  @JsonKey(name: 'administrationExpensesRatio')
  final double? administrationExpensesRatio;
  @JsonKey(name: 'liabilitiesToAssetsRatio')
  final double? liabilitiesToAssetsRatio;
  @JsonKey(name: 'workingCapitalRatio')
  final double? workingCapitalRatio;
  @JsonKey(name: 'primaryRevenueGrowth')
  final double? primaryRevenueGrowth;
  static const fromJsonFactory = _$PerformanceMetricsFromJson;
  static const toJsonFactory = _$PerformanceMetricsToJson;
  Map<String, dynamic> toJson() => _$PerformanceMetricsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PerformanceMetrics &&
            (identical(other.fundraisingEfficiency, fundraisingEfficiency) ||
                const DeepCollectionEquality().equals(
                    other.fundraisingEfficiency, fundraisingEfficiency)) &&
            (identical(
                    other.fundraisingExpensesRatio, fundraisingExpensesRatio) ||
                const DeepCollectionEquality().equals(
                    other.fundraisingExpensesRatio,
                    fundraisingExpensesRatio)) &&
            (identical(other.programExpensesGrowth, programExpensesGrowth) ||
                const DeepCollectionEquality().equals(
                    other.programExpensesGrowth, programExpensesGrowth)) &&
            (identical(other.programExpensesRatio, programExpensesRatio) ||
                const DeepCollectionEquality().equals(
                    other.programExpensesRatio, programExpensesRatio)) &&
            (identical(other.administrationExpensesRatio,
                    administrationExpensesRatio) ||
                const DeepCollectionEquality().equals(
                    other.administrationExpensesRatio,
                    administrationExpensesRatio)) &&
            (identical(
                    other.liabilitiesToAssetsRatio, liabilitiesToAssetsRatio) ||
                const DeepCollectionEquality().equals(
                    other.liabilitiesToAssetsRatio,
                    liabilitiesToAssetsRatio)) &&
            (identical(other.workingCapitalRatio, workingCapitalRatio) ||
                const DeepCollectionEquality()
                    .equals(other.workingCapitalRatio, workingCapitalRatio)) &&
            (identical(other.primaryRevenueGrowth, primaryRevenueGrowth) ||
                const DeepCollectionEquality()
                    .equals(other.primaryRevenueGrowth, primaryRevenueGrowth)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fundraisingEfficiency) ^
      const DeepCollectionEquality().hash(fundraisingExpensesRatio) ^
      const DeepCollectionEquality().hash(programExpensesGrowth) ^
      const DeepCollectionEquality().hash(programExpensesRatio) ^
      const DeepCollectionEquality().hash(administrationExpensesRatio) ^
      const DeepCollectionEquality().hash(liabilitiesToAssetsRatio) ^
      const DeepCollectionEquality().hash(workingCapitalRatio) ^
      const DeepCollectionEquality().hash(primaryRevenueGrowth) ^
      runtimeType.hashCode;
}

extension $PerformanceMetricsExtension on PerformanceMetrics {
  PerformanceMetrics copyWith(
      {double? fundraisingEfficiency,
      double? fundraisingExpensesRatio,
      double? programExpensesGrowth,
      double? programExpensesRatio,
      double? administrationExpensesRatio,
      double? liabilitiesToAssetsRatio,
      double? workingCapitalRatio,
      double? primaryRevenueGrowth}) {
    return PerformanceMetrics(
        fundraisingEfficiency:
            fundraisingEfficiency ?? this.fundraisingEfficiency,
        fundraisingExpensesRatio:
            fundraisingExpensesRatio ?? this.fundraisingExpensesRatio,
        programExpensesGrowth:
            programExpensesGrowth ?? this.programExpensesGrowth,
        programExpensesRatio: programExpensesRatio ?? this.programExpensesRatio,
        administrationExpensesRatio:
            administrationExpensesRatio ?? this.administrationExpensesRatio,
        liabilitiesToAssetsRatio:
            liabilitiesToAssetsRatio ?? this.liabilitiesToAssetsRatio,
        workingCapitalRatio: workingCapitalRatio ?? this.workingCapitalRatio,
        primaryRevenueGrowth:
            primaryRevenueGrowth ?? this.primaryRevenueGrowth);
  }
}

@JsonSerializable(explicitToJson: true)
class AccountabilityRating {
  AccountabilityRating({
    this.score,
    this.rating,
    this.accountabilityTests,
  });

  factory AccountabilityRating.fromJson(Map<String, dynamic> json) =>
      _$AccountabilityRatingFromJson(json);

  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'rating')
  final int? rating;
  @JsonKey(name: 'accountabilityTests')
  final AccountabilityTests? accountabilityTests;
  static const fromJsonFactory = _$AccountabilityRatingFromJson;
  static const toJsonFactory = _$AccountabilityRatingToJson;
  Map<String, dynamic> toJson() => _$AccountabilityRatingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountabilityRating &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.accountabilityTests, accountabilityTests) ||
                const DeepCollectionEquality()
                    .equals(other.accountabilityTests, accountabilityTests)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(accountabilityTests) ^
      runtimeType.hashCode;
}

extension $AccountabilityRatingExtension on AccountabilityRating {
  AccountabilityRating copyWith(
      {double? score, int? rating, AccountabilityTests? accountabilityTests}) {
    return AccountabilityRating(
        score: score ?? this.score,
        rating: rating ?? this.rating,
        accountabilityTests: accountabilityTests ?? this.accountabilityTests);
  }
}

@JsonSerializable(explicitToJson: true)
class AccountabilityTests {
  AccountabilityTests({
    this.boardListStatus,
    this.staffListStatus,
    this.auditedFinancialStatus,
    this.form990Status,
    this.privacyStatus,
    this.loansToOrFromOfficers,
    this.loansToOfficers,
    this.loansFromOfficers,
    this.materialDiversionOfAssets,
    this.boardMeetingMinutes,
    this.distributes990ToBoard,
    this.conflictOfInterestPolicy,
    this.whistleBlowerPolicy,
    this.recordsRetentionPolicy,
    this.reportsCEOAndSalary,
    this.ceoCompensationProcedure,
    this.compensatesBoard,
    this.independentAudit,
    this.independentBoard,
  });

  factory AccountabilityTests.fromJson(Map<String, dynamic> json) =>
      _$AccountabilityTestsFromJson(json);

  @JsonKey(
      name: 'boardListStatus',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? boardListStatus;
  @JsonKey(
      name: 'staffListStatus',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? staffListStatus;
  @JsonKey(
      name: 'auditedFinancialStatus',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? auditedFinancialStatus;
  @JsonKey(
      name: 'form990Status',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? form990Status;
  @JsonKey(
      name: 'privacyStatus',
      toJson: passFailOrOptOutToJson,
      fromJson: passFailOrOptOutFromJson)
  final enums.PassFailOrOptOut? privacyStatus;
  @JsonKey(
      name: 'loansToOrFromOfficers',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? loansToOrFromOfficers;
  @JsonKey(
      name: 'loansToOfficers',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? loansToOfficers;
  @JsonKey(
      name: 'loansFromOfficers',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? loansFromOfficers;
  @JsonKey(
      name: 'materialDiversionOfAssets',
      toJson: passFailOrRemediatedToJson,
      fromJson: passFailOrRemediatedFromJson)
  final enums.PassFailOrRemediated? materialDiversionOfAssets;
  @JsonKey(
      name: 'boardMeetingMinutes',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? boardMeetingMinutes;
  @JsonKey(
      name: 'distributes990ToBoard',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? distributes990ToBoard;
  @JsonKey(
      name: 'conflictOfInterestPolicy',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? conflictOfInterestPolicy;
  @JsonKey(
      name: 'whistleBlowerPolicy',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? whistleBlowerPolicy;
  @JsonKey(
      name: 'recordsRetentionPolicy',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? recordsRetentionPolicy;
  @JsonKey(
      name: 'reportsCEOAndSalary',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? reportsCEOAndSalary;
  @JsonKey(
      name: 'ceoCompensationProcedure',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? ceoCompensationProcedure;
  @JsonKey(
      name: 'compensatesBoard',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? compensatesBoard;
  @JsonKey(
      name: 'independentAudit',
      toJson: passFailOrPartialToJson,
      fromJson: passFailOrPartialFromJson)
  final enums.PassFailOrPartial? independentAudit;
  @JsonKey(
      name: 'independentBoard',
      toJson: passFailOrNotReportedToJson,
      fromJson: passFailOrNotReportedFromJson)
  final enums.PassFailOrNotReported? independentBoard;
  static const fromJsonFactory = _$AccountabilityTestsFromJson;
  static const toJsonFactory = _$AccountabilityTestsToJson;
  Map<String, dynamic> toJson() => _$AccountabilityTestsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountabilityTests &&
            (identical(other.boardListStatus, boardListStatus) ||
                const DeepCollectionEquality()
                    .equals(other.boardListStatus, boardListStatus)) &&
            (identical(other.staffListStatus, staffListStatus) ||
                const DeepCollectionEquality()
                    .equals(other.staffListStatus, staffListStatus)) &&
            (identical(other.auditedFinancialStatus, auditedFinancialStatus) ||
                const DeepCollectionEquality().equals(
                    other.auditedFinancialStatus, auditedFinancialStatus)) &&
            (identical(other.form990Status, form990Status) ||
                const DeepCollectionEquality()
                    .equals(other.form990Status, form990Status)) &&
            (identical(other.privacyStatus, privacyStatus) ||
                const DeepCollectionEquality()
                    .equals(other.privacyStatus, privacyStatus)) &&
            (identical(other.loansToOrFromOfficers, loansToOrFromOfficers) ||
                const DeepCollectionEquality().equals(
                    other.loansToOrFromOfficers, loansToOrFromOfficers)) &&
            (identical(other.loansToOfficers, loansToOfficers) ||
                const DeepCollectionEquality()
                    .equals(other.loansToOfficers, loansToOfficers)) &&
            (identical(other.loansFromOfficers, loansFromOfficers) ||
                const DeepCollectionEquality()
                    .equals(other.loansFromOfficers, loansFromOfficers)) &&
            (identical(other.materialDiversionOfAssets, materialDiversionOfAssets) ||
                const DeepCollectionEquality().equals(
                    other.materialDiversionOfAssets,
                    materialDiversionOfAssets)) &&
            (identical(other.boardMeetingMinutes, boardMeetingMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.boardMeetingMinutes, boardMeetingMinutes)) &&
            (identical(other.distributes990ToBoard, distributes990ToBoard) ||
                const DeepCollectionEquality().equals(
                    other.distributes990ToBoard, distributes990ToBoard)) &&
            (identical(other.conflictOfInterestPolicy, conflictOfInterestPolicy) ||
                const DeepCollectionEquality().equals(
                    other.conflictOfInterestPolicy,
                    conflictOfInterestPolicy)) &&
            (identical(other.whistleBlowerPolicy, whistleBlowerPolicy) ||
                const DeepCollectionEquality()
                    .equals(other.whistleBlowerPolicy, whistleBlowerPolicy)) &&
            (identical(other.recordsRetentionPolicy, recordsRetentionPolicy) ||
                const DeepCollectionEquality().equals(
                    other.recordsRetentionPolicy, recordsRetentionPolicy)) &&
            (identical(other.reportsCEOAndSalary, reportsCEOAndSalary) ||
                const DeepCollectionEquality()
                    .equals(other.reportsCEOAndSalary, reportsCEOAndSalary)) &&
            (identical(other.ceoCompensationProcedure, ceoCompensationProcedure) ||
                const DeepCollectionEquality().equals(
                    other.ceoCompensationProcedure,
                    ceoCompensationProcedure)) &&
            (identical(other.compensatesBoard, compensatesBoard) || const DeepCollectionEquality().equals(other.compensatesBoard, compensatesBoard)) &&
            (identical(other.independentAudit, independentAudit) || const DeepCollectionEquality().equals(other.independentAudit, independentAudit)) &&
            (identical(other.independentBoard, independentBoard) || const DeepCollectionEquality().equals(other.independentBoard, independentBoard)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(boardListStatus) ^
      const DeepCollectionEquality().hash(staffListStatus) ^
      const DeepCollectionEquality().hash(auditedFinancialStatus) ^
      const DeepCollectionEquality().hash(form990Status) ^
      const DeepCollectionEquality().hash(privacyStatus) ^
      const DeepCollectionEquality().hash(loansToOrFromOfficers) ^
      const DeepCollectionEquality().hash(loansToOfficers) ^
      const DeepCollectionEquality().hash(loansFromOfficers) ^
      const DeepCollectionEquality().hash(materialDiversionOfAssets) ^
      const DeepCollectionEquality().hash(boardMeetingMinutes) ^
      const DeepCollectionEquality().hash(distributes990ToBoard) ^
      const DeepCollectionEquality().hash(conflictOfInterestPolicy) ^
      const DeepCollectionEquality().hash(whistleBlowerPolicy) ^
      const DeepCollectionEquality().hash(recordsRetentionPolicy) ^
      const DeepCollectionEquality().hash(reportsCEOAndSalary) ^
      const DeepCollectionEquality().hash(ceoCompensationProcedure) ^
      const DeepCollectionEquality().hash(compensatesBoard) ^
      const DeepCollectionEquality().hash(independentAudit) ^
      const DeepCollectionEquality().hash(independentBoard) ^
      runtimeType.hashCode;
}

extension $AccountabilityTestsExtension on AccountabilityTests {
  AccountabilityTests copyWith(
      {enums.PassFailOrNotReported? boardListStatus,
      enums.PassFailOrNotReported? staffListStatus,
      enums.PassFailOrNotReported? auditedFinancialStatus,
      enums.PassFailOrNotReported? form990Status,
      enums.PassFailOrOptOut? privacyStatus,
      enums.PassFailOrNotReported? loansToOrFromOfficers,
      enums.PassFailOrNotReported? loansToOfficers,
      enums.PassFailOrNotReported? loansFromOfficers,
      enums.PassFailOrRemediated? materialDiversionOfAssets,
      enums.PassFailOrNotReported? boardMeetingMinutes,
      enums.PassFailOrNotReported? distributes990ToBoard,
      enums.PassFailOrNotReported? conflictOfInterestPolicy,
      enums.PassFailOrNotReported? whistleBlowerPolicy,
      enums.PassFailOrNotReported? recordsRetentionPolicy,
      enums.PassFailOrNotReported? reportsCEOAndSalary,
      enums.PassFailOrNotReported? ceoCompensationProcedure,
      enums.PassFailOrNotReported? compensatesBoard,
      enums.PassFailOrPartial? independentAudit,
      enums.PassFailOrNotReported? independentBoard}) {
    return AccountabilityTests(
        boardListStatus: boardListStatus ?? this.boardListStatus,
        staffListStatus: staffListStatus ?? this.staffListStatus,
        auditedFinancialStatus:
            auditedFinancialStatus ?? this.auditedFinancialStatus,
        form990Status: form990Status ?? this.form990Status,
        privacyStatus: privacyStatus ?? this.privacyStatus,
        loansToOrFromOfficers:
            loansToOrFromOfficers ?? this.loansToOrFromOfficers,
        loansToOfficers: loansToOfficers ?? this.loansToOfficers,
        loansFromOfficers: loansFromOfficers ?? this.loansFromOfficers,
        materialDiversionOfAssets:
            materialDiversionOfAssets ?? this.materialDiversionOfAssets,
        boardMeetingMinutes: boardMeetingMinutes ?? this.boardMeetingMinutes,
        distributes990ToBoard:
            distributes990ToBoard ?? this.distributes990ToBoard,
        conflictOfInterestPolicy:
            conflictOfInterestPolicy ?? this.conflictOfInterestPolicy,
        whistleBlowerPolicy: whistleBlowerPolicy ?? this.whistleBlowerPolicy,
        recordsRetentionPolicy:
            recordsRetentionPolicy ?? this.recordsRetentionPolicy,
        reportsCEOAndSalary: reportsCEOAndSalary ?? this.reportsCEOAndSalary,
        ceoCompensationProcedure:
            ceoCompensationProcedure ?? this.ceoCompensationProcedure,
        compensatesBoard: compensatesBoard ?? this.compensatesBoard,
        independentAudit: independentAudit ?? this.independentAudit,
        independentBoard: independentBoard ?? this.independentBoard);
  }
}

typedef AdvisoryCollection = List<AdvisoryCollectionItem>;

@JsonSerializable(explicitToJson: true)
class AdvisoryCollectionItem {
  AdvisoryCollectionItem({
    this.advisoryID,
    this.severity,
    this.datePublished,
    this.dateRemoved,
    this.dateModified,
    this.organization,
    required this.sources,
  });

  factory AdvisoryCollectionItem.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryCollectionItemFromJson(json);

  @JsonKey(name: 'advisoryID')
  final String? advisoryID;
  @JsonKey(name: 'severity', toJson: severityToJson, fromJson: severityFromJson)
  final enums.Severity? severity;
  @JsonKey(name: 'datePublished', toJson: _dateToJson)
  final DateTime? datePublished;
  @JsonKey(name: 'dateRemoved', toJson: _dateToJson)
  final DateTime? dateRemoved;
  @JsonKey(name: 'dateModified', toJson: _dateToJson)
  final DateTime? dateModified;
  @JsonKey(name: 'organization')
  final OrganizationLink? organization;
  @JsonKey(name: 'sources', defaultValue: <AdvisorySource>[])
  final List<AdvisorySource> sources;
  static const fromJsonFactory = _$AdvisoryCollectionItemFromJson;
  static const toJsonFactory = _$AdvisoryCollectionItemToJson;
  Map<String, dynamic> toJson() => _$AdvisoryCollectionItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdvisoryCollectionItem &&
            (identical(other.advisoryID, advisoryID) ||
                const DeepCollectionEquality()
                    .equals(other.advisoryID, advisoryID)) &&
            (identical(other.severity, severity) ||
                const DeepCollectionEquality()
                    .equals(other.severity, severity)) &&
            (identical(other.datePublished, datePublished) ||
                const DeepCollectionEquality()
                    .equals(other.datePublished, datePublished)) &&
            (identical(other.dateRemoved, dateRemoved) ||
                const DeepCollectionEquality()
                    .equals(other.dateRemoved, dateRemoved)) &&
            (identical(other.dateModified, dateModified) ||
                const DeepCollectionEquality()
                    .equals(other.dateModified, dateModified)) &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)) &&
            (identical(other.sources, sources) ||
                const DeepCollectionEquality().equals(other.sources, sources)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(advisoryID) ^
      const DeepCollectionEquality().hash(severity) ^
      const DeepCollectionEquality().hash(datePublished) ^
      const DeepCollectionEquality().hash(dateRemoved) ^
      const DeepCollectionEquality().hash(dateModified) ^
      const DeepCollectionEquality().hash(organization) ^
      const DeepCollectionEquality().hash(sources) ^
      runtimeType.hashCode;
}

extension $AdvisoryCollectionItemExtension on AdvisoryCollectionItem {
  AdvisoryCollectionItem copyWith(
      {String? advisoryID,
      enums.Severity? severity,
      DateTime? datePublished,
      DateTime? dateRemoved,
      DateTime? dateModified,
      OrganizationLink? organization,
      List<AdvisorySource>? sources}) {
    return AdvisoryCollectionItem(
        advisoryID: advisoryID ?? this.advisoryID,
        severity: severity ?? this.severity,
        datePublished: datePublished ?? this.datePublished,
        dateRemoved: dateRemoved ?? this.dateRemoved,
        dateModified: dateModified ?? this.dateModified,
        organization: organization ?? this.organization,
        sources: sources ?? this.sources);
  }
}

@JsonSerializable(explicitToJson: true)
class AdvisorySource {
  AdvisorySource({
    this.datePublished,
    this.dateRemoved,
    this.dateModified,
    this.publisher,
    this.url,
    this.summary,
  });

  factory AdvisorySource.fromJson(Map<String, dynamic> json) =>
      _$AdvisorySourceFromJson(json);

  @JsonKey(name: 'datePublished', toJson: _dateToJson)
  final DateTime? datePublished;
  @JsonKey(name: 'dateRemoved', toJson: _dateToJson)
  final DateTime? dateRemoved;
  @JsonKey(name: 'dateModified', toJson: _dateToJson)
  final DateTime? dateModified;
  @JsonKey(name: 'publisher')
  final String? publisher;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'summary')
  final String? summary;
  static const fromJsonFactory = _$AdvisorySourceFromJson;
  static const toJsonFactory = _$AdvisorySourceToJson;
  Map<String, dynamic> toJson() => _$AdvisorySourceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdvisorySource &&
            (identical(other.datePublished, datePublished) ||
                const DeepCollectionEquality()
                    .equals(other.datePublished, datePublished)) &&
            (identical(other.dateRemoved, dateRemoved) ||
                const DeepCollectionEquality()
                    .equals(other.dateRemoved, dateRemoved)) &&
            (identical(other.dateModified, dateModified) ||
                const DeepCollectionEquality()
                    .equals(other.dateModified, dateModified)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality().equals(other.summary, summary)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(datePublished) ^
      const DeepCollectionEquality().hash(dateRemoved) ^
      const DeepCollectionEquality().hash(dateModified) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(summary) ^
      runtimeType.hashCode;
}

extension $AdvisorySourceExtension on AdvisorySource {
  AdvisorySource copyWith(
      {DateTime? datePublished,
      DateTime? dateRemoved,
      DateTime? dateModified,
      String? publisher,
      String? url,
      String? summary}) {
    return AdvisorySource(
        datePublished: datePublished ?? this.datePublished,
        dateRemoved: dateRemoved ?? this.dateRemoved,
        dateModified: dateModified ?? this.dateModified,
        publisher: publisher ?? this.publisher,
        url: url ?? this.url,
        summary: summary ?? this.summary);
  }
}

@JsonSerializable(explicitToJson: true)
class Advisory {
  Advisory({
    this.advisoryID,
    this.severity,
    this.datePublished,
    this.dateRemoved,
    this.dateModified,
    this.organization,
    required this.sources,
  });

  factory Advisory.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryFromJson(json);

  @JsonKey(name: 'advisoryID')
  final String? advisoryID;
  @JsonKey(name: 'severity', toJson: severityToJson, fromJson: severityFromJson)
  final enums.Severity? severity;
  @JsonKey(name: 'datePublished', toJson: _dateToJson)
  final DateTime? datePublished;
  @JsonKey(name: 'dateRemoved', toJson: _dateToJson)
  final DateTime? dateRemoved;
  @JsonKey(name: 'dateModified', toJson: _dateToJson)
  final DateTime? dateModified;
  @JsonKey(name: 'organization')
  final OrganizationLink? organization;
  @JsonKey(name: 'sources', defaultValue: <AdvisorySource>[])
  final List<AdvisorySource> sources;
  static const fromJsonFactory = _$AdvisoryFromJson;
  static const toJsonFactory = _$AdvisoryToJson;
  Map<String, dynamic> toJson() => _$AdvisoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Advisory &&
            (identical(other.advisoryID, advisoryID) ||
                const DeepCollectionEquality()
                    .equals(other.advisoryID, advisoryID)) &&
            (identical(other.severity, severity) ||
                const DeepCollectionEquality()
                    .equals(other.severity, severity)) &&
            (identical(other.datePublished, datePublished) ||
                const DeepCollectionEquality()
                    .equals(other.datePublished, datePublished)) &&
            (identical(other.dateRemoved, dateRemoved) ||
                const DeepCollectionEquality()
                    .equals(other.dateRemoved, dateRemoved)) &&
            (identical(other.dateModified, dateModified) ||
                const DeepCollectionEquality()
                    .equals(other.dateModified, dateModified)) &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)) &&
            (identical(other.sources, sources) ||
                const DeepCollectionEquality().equals(other.sources, sources)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(advisoryID) ^
      const DeepCollectionEquality().hash(severity) ^
      const DeepCollectionEquality().hash(datePublished) ^
      const DeepCollectionEquality().hash(dateRemoved) ^
      const DeepCollectionEquality().hash(dateModified) ^
      const DeepCollectionEquality().hash(organization) ^
      const DeepCollectionEquality().hash(sources) ^
      runtimeType.hashCode;
}

extension $AdvisoryExtension on Advisory {
  Advisory copyWith(
      {String? advisoryID,
      enums.Severity? severity,
      DateTime? datePublished,
      DateTime? dateRemoved,
      DateTime? dateModified,
      OrganizationLink? organization,
      List<AdvisorySource>? sources}) {
    return Advisory(
        advisoryID: advisoryID ?? this.advisoryID,
        severity: severity ?? this.severity,
        datePublished: datePublished ?? this.datePublished,
        dateRemoved: dateRemoved ?? this.dateRemoved,
        dateModified: dateModified ?? this.dateModified,
        organization: organization ?? this.organization,
        sources: sources ?? this.sources);
  }
}

typedef CategoryCollection = List<CategoryCollectionItem>;

@JsonSerializable(explicitToJson: true)
class CategoryCollectionItem {
  CategoryCollectionItem({
    this.categoryID,
    this.categoryName,
    this.image,
    this.charityNavigatorURL,
    this.causes,
  });

  factory CategoryCollectionItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryCollectionItemFromJson(json);

  @JsonKey(name: 'categoryID')
  final int? categoryID;
  @JsonKey(name: 'categoryName')
  final String? categoryName;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'charityNavigatorURL')
  final String? charityNavigatorURL;
  @JsonKey(name: 'causes')
  final List<CategoryCollectionCausesItem>? causes;
  static const fromJsonFactory = _$CategoryCollectionItemFromJson;
  static const toJsonFactory = _$CategoryCollectionItemToJson;
  Map<String, dynamic> toJson() => _$CategoryCollectionItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryCollectionItem &&
            (identical(other.categoryID, categoryID) ||
                const DeepCollectionEquality()
                    .equals(other.categoryID, categoryID)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.charityNavigatorURL, charityNavigatorURL) ||
                const DeepCollectionEquality()
                    .equals(other.charityNavigatorURL, charityNavigatorURL)) &&
            (identical(other.causes, causes) ||
                const DeepCollectionEquality().equals(other.causes, causes)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryID) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(charityNavigatorURL) ^
      const DeepCollectionEquality().hash(causes) ^
      runtimeType.hashCode;
}

extension $CategoryCollectionItemExtension on CategoryCollectionItem {
  CategoryCollectionItem copyWith(
      {int? categoryID,
      String? categoryName,
      String? image,
      String? charityNavigatorURL,
      List<CategoryCollectionCausesItem>? causes}) {
    return CategoryCollectionItem(
        categoryID: categoryID ?? this.categoryID,
        categoryName: categoryName ?? this.categoryName,
        image: image ?? this.image,
        charityNavigatorURL: charityNavigatorURL ?? this.charityNavigatorURL,
        causes: causes ?? this.causes);
  }
}

typedef CategoryCollectionCauses = List<CategoryCollectionCausesItem>;

@JsonSerializable(explicitToJson: true)
class CategoryCollectionCausesItem {
  CategoryCollectionCausesItem({
    this.causeID,
    this.causeName,
    this.image,
    this.charityNavigatorURL,
  });

  factory CategoryCollectionCausesItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryCollectionCausesItemFromJson(json);

  @JsonKey(name: 'causeID')
  final String? causeID;
  @JsonKey(name: 'causeName')
  final String? causeName;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'charityNavigatorURL')
  final String? charityNavigatorURL;
  static const fromJsonFactory = _$CategoryCollectionCausesItemFromJson;
  static const toJsonFactory = _$CategoryCollectionCausesItemToJson;
  Map<String, dynamic> toJson() => _$CategoryCollectionCausesItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryCollectionCausesItem &&
            (identical(other.causeID, causeID) ||
                const DeepCollectionEquality()
                    .equals(other.causeID, causeID)) &&
            (identical(other.causeName, causeName) ||
                const DeepCollectionEquality()
                    .equals(other.causeName, causeName)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.charityNavigatorURL, charityNavigatorURL) ||
                const DeepCollectionEquality()
                    .equals(other.charityNavigatorURL, charityNavigatorURL)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(causeID) ^
      const DeepCollectionEquality().hash(causeName) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(charityNavigatorURL) ^
      runtimeType.hashCode;
}

extension $CategoryCollectionCausesItemExtension
    on CategoryCollectionCausesItem {
  CategoryCollectionCausesItem copyWith(
      {String? causeID,
      String? causeName,
      String? image,
      String? charityNavigatorURL}) {
    return CategoryCollectionCausesItem(
        causeID: causeID ?? this.causeID,
        causeName: causeName ?? this.causeName,
        image: image ?? this.image,
        charityNavigatorURL: charityNavigatorURL ?? this.charityNavigatorURL);
  }
}

typedef ActiveAdvisoryCollection = List<ActiveAdvisoryCollectionItem>;

@JsonSerializable(explicitToJson: true)
class ActiveAdvisoryCollectionItem {
  ActiveAdvisoryCollectionItem({
    this.mailingAddress,
    required this.organization,
    this.advisories,
  });

  factory ActiveAdvisoryCollectionItem.fromJson(Map<String, dynamic> json) =>
      _$ActiveAdvisoryCollectionItemFromJson(json);

  @JsonKey(name: 'mailingAddress')
  final ActiveAdvisoryCollectionMailingAddress? mailingAddress;
  @JsonKey(name: 'organization')
  final ActiveAdvisoryCollectionOrganization organization;
  @JsonKey(name: 'advisories')
  final AdvisoryRollup? advisories;
  static const fromJsonFactory = _$ActiveAdvisoryCollectionItemFromJson;
  static const toJsonFactory = _$ActiveAdvisoryCollectionItemToJson;
  Map<String, dynamic> toJson() => _$ActiveAdvisoryCollectionItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActiveAdvisoryCollectionItem &&
            (identical(other.mailingAddress, mailingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.mailingAddress, mailingAddress)) &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)) &&
            (identical(other.advisories, advisories) ||
                const DeepCollectionEquality()
                    .equals(other.advisories, advisories)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mailingAddress) ^
      const DeepCollectionEquality().hash(organization) ^
      const DeepCollectionEquality().hash(advisories) ^
      runtimeType.hashCode;
}

extension $ActiveAdvisoryCollectionItemExtension
    on ActiveAdvisoryCollectionItem {
  ActiveAdvisoryCollectionItem copyWith(
      {ActiveAdvisoryCollectionMailingAddress? mailingAddress,
      ActiveAdvisoryCollectionOrganization? organization,
      AdvisoryRollup? advisories}) {
    return ActiveAdvisoryCollectionItem(
        mailingAddress: mailingAddress ?? this.mailingAddress,
        organization: organization ?? this.organization,
        advisories: advisories ?? this.advisories);
  }
}

@JsonSerializable(explicitToJson: true)
class ActiveAdvisoryCollectionMailingAddress {
  ActiveAdvisoryCollectionMailingAddress({
    this.city,
    this.stateOrProvince,
  });

  factory ActiveAdvisoryCollectionMailingAddress.fromJson(
          Map<String, dynamic> json) =>
      _$ActiveAdvisoryCollectionMailingAddressFromJson(json);

  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'stateOrProvince')
  final String? stateOrProvince;
  static const fromJsonFactory =
      _$ActiveAdvisoryCollectionMailingAddressFromJson;
  static const toJsonFactory = _$ActiveAdvisoryCollectionMailingAddressToJson;
  Map<String, dynamic> toJson() =>
      _$ActiveAdvisoryCollectionMailingAddressToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActiveAdvisoryCollectionMailingAddress &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                const DeepCollectionEquality()
                    .equals(other.stateOrProvince, stateOrProvince)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(stateOrProvince) ^
      runtimeType.hashCode;
}

extension $ActiveAdvisoryCollectionMailingAddressExtension
    on ActiveAdvisoryCollectionMailingAddress {
  ActiveAdvisoryCollectionMailingAddress copyWith(
      {String? city, String? stateOrProvince}) {
    return ActiveAdvisoryCollectionMailingAddress(
        city: city ?? this.city,
        stateOrProvince: stateOrProvince ?? this.stateOrProvince);
  }
}

@JsonSerializable(explicitToJson: true)
class ActiveAdvisoryCollectionOrganization {
  ActiveAdvisoryCollectionOrganization({
    this.ein,
    this.charityName,
    this.charityNavigatorURL,
  });

  factory ActiveAdvisoryCollectionOrganization.fromJson(
          Map<String, dynamic> json) =>
      _$ActiveAdvisoryCollectionOrganizationFromJson(json);

  @JsonKey(name: 'ein')
  final String? ein;
  @JsonKey(name: 'charityName')
  final String? charityName;
  @JsonKey(name: 'charityNavigatorURL')
  final String? charityNavigatorURL;
  static const fromJsonFactory = _$ActiveAdvisoryCollectionOrganizationFromJson;
  static const toJsonFactory = _$ActiveAdvisoryCollectionOrganizationToJson;
  Map<String, dynamic> toJson() =>
      _$ActiveAdvisoryCollectionOrganizationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActiveAdvisoryCollectionOrganization &&
            (identical(other.ein, ein) ||
                const DeepCollectionEquality().equals(other.ein, ein)) &&
            (identical(other.charityName, charityName) ||
                const DeepCollectionEquality()
                    .equals(other.charityName, charityName)) &&
            (identical(other.charityNavigatorURL, charityNavigatorURL) ||
                const DeepCollectionEquality()
                    .equals(other.charityNavigatorURL, charityNavigatorURL)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ein) ^
      const DeepCollectionEquality().hash(charityName) ^
      const DeepCollectionEquality().hash(charityNavigatorURL) ^
      runtimeType.hashCode;
}

extension $ActiveAdvisoryCollectionOrganizationExtension
    on ActiveAdvisoryCollectionOrganization {
  ActiveAdvisoryCollectionOrganization copyWith(
      {String? ein, String? charityName, String? charityNavigatorURL}) {
    return ActiveAdvisoryCollectionOrganization(
        ein: ein ?? this.ein,
        charityName: charityName ?? this.charityName,
        charityNavigatorURL: charityNavigatorURL ?? this.charityNavigatorURL);
  }
}

@JsonSerializable(explicitToJson: true)
class AdvisoryRollup {
  AdvisoryRollup({
    this.severity,
    this.active,
  });

  factory AdvisoryRollup.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryRollupFromJson(json);

  @JsonKey(name: 'severity', toJson: severityToJson, fromJson: severityFromJson)
  final enums.Severity? severity;
  @JsonKey(name: 'active')
  final AdvisoryCollectionLink? active;
  static const fromJsonFactory = _$AdvisoryRollupFromJson;
  static const toJsonFactory = _$AdvisoryRollupToJson;
  Map<String, dynamic> toJson() => _$AdvisoryRollupToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdvisoryRollup &&
            (identical(other.severity, severity) ||
                const DeepCollectionEquality()
                    .equals(other.severity, severity)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(severity) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $AdvisoryRollupExtension on AdvisoryRollup {
  AdvisoryRollup copyWith(
      {enums.Severity? severity, AdvisoryCollectionLink? active}) {
    return AdvisoryRollup(
        severity: severity ?? this.severity, active: active ?? this.active);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionSearchOrganizationsResponse400 {
  OrganizationCollectionSearchOrganizationsResponse400({
    this.errorMessage,
  });

  factory OrganizationCollectionSearchOrganizationsResponse400.fromJson(
          Map<String, dynamic> json) =>
      _$OrganizationCollectionSearchOrganizationsResponse400FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory =
      _$OrganizationCollectionSearchOrganizationsResponse400FromJson;
  static const toJsonFactory =
      _$OrganizationCollectionSearchOrganizationsResponse400ToJson;
  Map<String, dynamic> toJson() =>
      _$OrganizationCollectionSearchOrganizationsResponse400ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionSearchOrganizationsResponse400 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $OrganizationCollectionSearchOrganizationsResponse400Extension
    on OrganizationCollectionSearchOrganizationsResponse400 {
  OrganizationCollectionSearchOrganizationsResponse400 copyWith(
      {String? errorMessage}) {
    return OrganizationCollectionSearchOrganizationsResponse400(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationCollectionSearchOrganizationsResponse404 {
  OrganizationCollectionSearchOrganizationsResponse404({
    this.errorMessage,
  });

  factory OrganizationCollectionSearchOrganizationsResponse404.fromJson(
          Map<String, dynamic> json) =>
      _$OrganizationCollectionSearchOrganizationsResponse404FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory =
      _$OrganizationCollectionSearchOrganizationsResponse404FromJson;
  static const toJsonFactory =
      _$OrganizationCollectionSearchOrganizationsResponse404ToJson;
  Map<String, dynamic> toJson() =>
      _$OrganizationCollectionSearchOrganizationsResponse404ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationCollectionSearchOrganizationsResponse404 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $OrganizationCollectionSearchOrganizationsResponse404Extension
    on OrganizationCollectionSearchOrganizationsResponse404 {
  OrganizationCollectionSearchOrganizationsResponse404 copyWith(
      {String? errorMessage}) {
    return OrganizationCollectionSearchOrganizationsResponse404(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationObjectGetOrganizationResponse400 {
  OrganizationObjectGetOrganizationResponse400({
    this.errorMessage,
  });

  factory OrganizationObjectGetOrganizationResponse400.fromJson(
          Map<String, dynamic> json) =>
      _$OrganizationObjectGetOrganizationResponse400FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory =
      _$OrganizationObjectGetOrganizationResponse400FromJson;
  static const toJsonFactory =
      _$OrganizationObjectGetOrganizationResponse400ToJson;
  Map<String, dynamic> toJson() =>
      _$OrganizationObjectGetOrganizationResponse400ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationObjectGetOrganizationResponse400 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $OrganizationObjectGetOrganizationResponse400Extension
    on OrganizationObjectGetOrganizationResponse400 {
  OrganizationObjectGetOrganizationResponse400 copyWith(
      {String? errorMessage}) {
    return OrganizationObjectGetOrganizationResponse400(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class OrganizationObjectGetOrganizationResponse404 {
  OrganizationObjectGetOrganizationResponse404({
    this.errorMessage,
  });

  factory OrganizationObjectGetOrganizationResponse404.fromJson(
          Map<String, dynamic> json) =>
      _$OrganizationObjectGetOrganizationResponse404FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory =
      _$OrganizationObjectGetOrganizationResponse404FromJson;
  static const toJsonFactory =
      _$OrganizationObjectGetOrganizationResponse404ToJson;
  Map<String, dynamic> toJson() =>
      _$OrganizationObjectGetOrganizationResponse404ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrganizationObjectGetOrganizationResponse404 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $OrganizationObjectGetOrganizationResponse404Extension
    on OrganizationObjectGetOrganizationResponse404 {
  OrganizationObjectGetOrganizationResponse404 copyWith(
      {String? errorMessage}) {
    return OrganizationObjectGetOrganizationResponse404(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class RatingCollectionGetRatingsResponse400 {
  RatingCollectionGetRatingsResponse400({
    this.errorMessage,
  });

  factory RatingCollectionGetRatingsResponse400.fromJson(
          Map<String, dynamic> json) =>
      _$RatingCollectionGetRatingsResponse400FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory =
      _$RatingCollectionGetRatingsResponse400FromJson;
  static const toJsonFactory = _$RatingCollectionGetRatingsResponse400ToJson;
  Map<String, dynamic> toJson() =>
      _$RatingCollectionGetRatingsResponse400ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingCollectionGetRatingsResponse400 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $RatingCollectionGetRatingsResponse400Extension
    on RatingCollectionGetRatingsResponse400 {
  RatingCollectionGetRatingsResponse400 copyWith({String? errorMessage}) {
    return RatingCollectionGetRatingsResponse400(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class RatingCollectionGetRatingsResponse404 {
  RatingCollectionGetRatingsResponse404({
    this.errorMessage,
  });

  factory RatingCollectionGetRatingsResponse404.fromJson(
          Map<String, dynamic> json) =>
      _$RatingCollectionGetRatingsResponse404FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory =
      _$RatingCollectionGetRatingsResponse404FromJson;
  static const toJsonFactory = _$RatingCollectionGetRatingsResponse404ToJson;
  Map<String, dynamic> toJson() =>
      _$RatingCollectionGetRatingsResponse404ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingCollectionGetRatingsResponse404 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $RatingCollectionGetRatingsResponse404Extension
    on RatingCollectionGetRatingsResponse404 {
  RatingCollectionGetRatingsResponse404 copyWith({String? errorMessage}) {
    return RatingCollectionGetRatingsResponse404(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class RatingObjectGetRatingResponse400 {
  RatingObjectGetRatingResponse400({
    this.errorMessage,
  });

  factory RatingObjectGetRatingResponse400.fromJson(
          Map<String, dynamic> json) =>
      _$RatingObjectGetRatingResponse400FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory = _$RatingObjectGetRatingResponse400FromJson;
  static const toJsonFactory = _$RatingObjectGetRatingResponse400ToJson;
  Map<String, dynamic> toJson() =>
      _$RatingObjectGetRatingResponse400ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingObjectGetRatingResponse400 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $RatingObjectGetRatingResponse400Extension
    on RatingObjectGetRatingResponse400 {
  RatingObjectGetRatingResponse400 copyWith({String? errorMessage}) {
    return RatingObjectGetRatingResponse400(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class RatingObjectGetRatingResponse404 {
  RatingObjectGetRatingResponse404({
    this.errorMessage,
  });

  factory RatingObjectGetRatingResponse404.fromJson(
          Map<String, dynamic> json) =>
      _$RatingObjectGetRatingResponse404FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory = _$RatingObjectGetRatingResponse404FromJson;
  static const toJsonFactory = _$RatingObjectGetRatingResponse404ToJson;
  Map<String, dynamic> toJson() =>
      _$RatingObjectGetRatingResponse404ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingObjectGetRatingResponse404 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $RatingObjectGetRatingResponse404Extension
    on RatingObjectGetRatingResponse404 {
  RatingObjectGetRatingResponse404 copyWith({String? errorMessage}) {
    return RatingObjectGetRatingResponse404(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class AdvisoryCollectionGetAdvisoriesResponse400 {
  AdvisoryCollectionGetAdvisoriesResponse400({
    this.errorMessage,
  });

  factory AdvisoryCollectionGetAdvisoriesResponse400.fromJson(
          Map<String, dynamic> json) =>
      _$AdvisoryCollectionGetAdvisoriesResponse400FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory =
      _$AdvisoryCollectionGetAdvisoriesResponse400FromJson;
  static const toJsonFactory =
      _$AdvisoryCollectionGetAdvisoriesResponse400ToJson;
  Map<String, dynamic> toJson() =>
      _$AdvisoryCollectionGetAdvisoriesResponse400ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdvisoryCollectionGetAdvisoriesResponse400 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $AdvisoryCollectionGetAdvisoriesResponse400Extension
    on AdvisoryCollectionGetAdvisoriesResponse400 {
  AdvisoryCollectionGetAdvisoriesResponse400 copyWith({String? errorMessage}) {
    return AdvisoryCollectionGetAdvisoriesResponse400(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class AdvisoryCollectionGetAdvisoriesResponse404 {
  AdvisoryCollectionGetAdvisoriesResponse404({
    this.errorMessage,
  });

  factory AdvisoryCollectionGetAdvisoriesResponse404.fromJson(
          Map<String, dynamic> json) =>
      _$AdvisoryCollectionGetAdvisoriesResponse404FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory =
      _$AdvisoryCollectionGetAdvisoriesResponse404FromJson;
  static const toJsonFactory =
      _$AdvisoryCollectionGetAdvisoriesResponse404ToJson;
  Map<String, dynamic> toJson() =>
      _$AdvisoryCollectionGetAdvisoriesResponse404ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdvisoryCollectionGetAdvisoriesResponse404 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $AdvisoryCollectionGetAdvisoriesResponse404Extension
    on AdvisoryCollectionGetAdvisoriesResponse404 {
  AdvisoryCollectionGetAdvisoriesResponse404 copyWith({String? errorMessage}) {
    return AdvisoryCollectionGetAdvisoriesResponse404(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class AdvisoryObjectGetAdvisoryResponse400 {
  AdvisoryObjectGetAdvisoryResponse400({
    this.errorMessage,
  });

  factory AdvisoryObjectGetAdvisoryResponse400.fromJson(
          Map<String, dynamic> json) =>
      _$AdvisoryObjectGetAdvisoryResponse400FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory = _$AdvisoryObjectGetAdvisoryResponse400FromJson;
  static const toJsonFactory = _$AdvisoryObjectGetAdvisoryResponse400ToJson;
  Map<String, dynamic> toJson() =>
      _$AdvisoryObjectGetAdvisoryResponse400ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdvisoryObjectGetAdvisoryResponse400 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $AdvisoryObjectGetAdvisoryResponse400Extension
    on AdvisoryObjectGetAdvisoryResponse400 {
  AdvisoryObjectGetAdvisoryResponse400 copyWith({String? errorMessage}) {
    return AdvisoryObjectGetAdvisoryResponse400(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class AdvisoryObjectGetAdvisoryResponse404 {
  AdvisoryObjectGetAdvisoryResponse404({
    this.errorMessage,
  });

  factory AdvisoryObjectGetAdvisoryResponse404.fromJson(
          Map<String, dynamic> json) =>
      _$AdvisoryObjectGetAdvisoryResponse404FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory = _$AdvisoryObjectGetAdvisoryResponse404FromJson;
  static const toJsonFactory = _$AdvisoryObjectGetAdvisoryResponse404ToJson;
  Map<String, dynamic> toJson() =>
      _$AdvisoryObjectGetAdvisoryResponse404ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdvisoryObjectGetAdvisoryResponse404 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $AdvisoryObjectGetAdvisoryResponse404Extension
    on AdvisoryObjectGetAdvisoryResponse404 {
  AdvisoryObjectGetAdvisoryResponse404 copyWith({String? errorMessage}) {
    return AdvisoryObjectGetAdvisoryResponse404(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 {
  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400({
    this.errorMessage,
  });

  factory ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400.fromJson(
          Map<String, dynamic> json) =>
      _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory =
      _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400FromJson;
  static const toJsonFactory =
      _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400ToJson;
  Map<String, dynamic> toJson() =>
      _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Extension
    on ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 {
  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 copyWith(
      {String? errorMessage}) {
    return ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

@JsonSerializable(explicitToJson: true)
class ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 {
  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404({
    this.errorMessage,
  });

  factory ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404.fromJson(
          Map<String, dynamic> json) =>
      _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404FromJson(json);

  @JsonKey(name: 'errorMessage')
  final String? errorMessage;
  static const fromJsonFactory =
      _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404FromJson;
  static const toJsonFactory =
      _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404ToJson;
  Map<String, dynamic> toJson() =>
      _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404ToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errorMessage) ^ runtimeType.hashCode;
}

extension $ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Extension
    on ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 {
  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 copyWith(
      {String? errorMessage}) {
    return ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404(
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

String? deductibilityTypeToJson(enums.DeductibilityType? deductibilityType) {
  return enums.$DeductibilityTypeMap[deductibilityType];
}

enums.DeductibilityType deductibilityTypeFromJson(
  Object? deductibilityType, [
  enums.DeductibilityType? defaultValue,
]) {
  if (deductibilityType is String) {
    return enums.$DeductibilityTypeMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == deductibilityType.toLowerCase(),
            orElse: () => const MapEntry(
                enums.DeductibilityType.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$DeductibilityTypeMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.DeductibilityType.swaggerGeneratedUnknown;
}

List<String> deductibilityTypeListToJson(
    List<enums.DeductibilityType>? deductibilityType) {
  if (deductibilityType == null) {
    return [];
  }

  return deductibilityType.map((e) => enums.$DeductibilityTypeMap[e]!).toList();
}

List<enums.DeductibilityType> deductibilityTypeListFromJson(
  List? deductibilityType, [
  List<enums.DeductibilityType>? defaultValue,
]) {
  if (deductibilityType == null) {
    return defaultValue ?? [];
  }

  return deductibilityType
      .map((e) => deductibilityTypeFromJson(e.toString()))
      .toList();
}

String? severityToJson(enums.Severity? severity) {
  return enums.$SeverityMap[severity];
}

enums.Severity severityFromJson(
  Object? severity, [
  enums.Severity? defaultValue,
]) {
  if (severity is String) {
    return enums.$SeverityMap.entries
        .firstWhere(
            (element) => element.value.toLowerCase() == severity.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.Severity.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$SeverityMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ?? defaultValue ?? enums.Severity.swaggerGeneratedUnknown;
}

List<String> severityListToJson(List<enums.Severity>? severity) {
  if (severity == null) {
    return [];
  }

  return severity.map((e) => enums.$SeverityMap[e]!).toList();
}

List<enums.Severity> severityListFromJson(
  List? severity, [
  List<enums.Severity>? defaultValue,
]) {
  if (severity == null) {
    return defaultValue ?? [];
  }

  return severity.map((e) => severityFromJson(e.toString())).toList();
}

String? passFailOrNotReportedToJson(
    enums.PassFailOrNotReported? passFailOrNotReported) {
  return enums.$PassFailOrNotReportedMap[passFailOrNotReported];
}

enums.PassFailOrNotReported passFailOrNotReportedFromJson(
  Object? passFailOrNotReported, [
  enums.PassFailOrNotReported? defaultValue,
]) {
  if (passFailOrNotReported is String) {
    return enums.$PassFailOrNotReportedMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                passFailOrNotReported.toLowerCase(),
            orElse: () => const MapEntry(
                enums.PassFailOrNotReported.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PassFailOrNotReportedMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PassFailOrNotReported.swaggerGeneratedUnknown;
}

List<String> passFailOrNotReportedListToJson(
    List<enums.PassFailOrNotReported>? passFailOrNotReported) {
  if (passFailOrNotReported == null) {
    return [];
  }

  return passFailOrNotReported
      .map((e) => enums.$PassFailOrNotReportedMap[e]!)
      .toList();
}

List<enums.PassFailOrNotReported> passFailOrNotReportedListFromJson(
  List? passFailOrNotReported, [
  List<enums.PassFailOrNotReported>? defaultValue,
]) {
  if (passFailOrNotReported == null) {
    return defaultValue ?? [];
  }

  return passFailOrNotReported
      .map((e) => passFailOrNotReportedFromJson(e.toString()))
      .toList();
}

String? passFailOrOptOutToJson(enums.PassFailOrOptOut? passFailOrOptOut) {
  return enums.$PassFailOrOptOutMap[passFailOrOptOut];
}

enums.PassFailOrOptOut passFailOrOptOutFromJson(
  Object? passFailOrOptOut, [
  enums.PassFailOrOptOut? defaultValue,
]) {
  if (passFailOrOptOut is String) {
    return enums.$PassFailOrOptOutMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == passFailOrOptOut.toLowerCase(),
            orElse: () => const MapEntry(
                enums.PassFailOrOptOut.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PassFailOrOptOutMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PassFailOrOptOut.swaggerGeneratedUnknown;
}

List<String> passFailOrOptOutListToJson(
    List<enums.PassFailOrOptOut>? passFailOrOptOut) {
  if (passFailOrOptOut == null) {
    return [];
  }

  return passFailOrOptOut.map((e) => enums.$PassFailOrOptOutMap[e]!).toList();
}

List<enums.PassFailOrOptOut> passFailOrOptOutListFromJson(
  List? passFailOrOptOut, [
  List<enums.PassFailOrOptOut>? defaultValue,
]) {
  if (passFailOrOptOut == null) {
    return defaultValue ?? [];
  }

  return passFailOrOptOut
      .map((e) => passFailOrOptOutFromJson(e.toString()))
      .toList();
}

String? passFailOrRemediatedToJson(
    enums.PassFailOrRemediated? passFailOrRemediated) {
  return enums.$PassFailOrRemediatedMap[passFailOrRemediated];
}

enums.PassFailOrRemediated passFailOrRemediatedFromJson(
  Object? passFailOrRemediated, [
  enums.PassFailOrRemediated? defaultValue,
]) {
  if (passFailOrRemediated is String) {
    return enums.$PassFailOrRemediatedMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() ==
                passFailOrRemediated.toLowerCase(),
            orElse: () => const MapEntry(
                enums.PassFailOrRemediated.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PassFailOrRemediatedMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PassFailOrRemediated.swaggerGeneratedUnknown;
}

List<String> passFailOrRemediatedListToJson(
    List<enums.PassFailOrRemediated>? passFailOrRemediated) {
  if (passFailOrRemediated == null) {
    return [];
  }

  return passFailOrRemediated
      .map((e) => enums.$PassFailOrRemediatedMap[e]!)
      .toList();
}

List<enums.PassFailOrRemediated> passFailOrRemediatedListFromJson(
  List? passFailOrRemediated, [
  List<enums.PassFailOrRemediated>? defaultValue,
]) {
  if (passFailOrRemediated == null) {
    return defaultValue ?? [];
  }

  return passFailOrRemediated
      .map((e) => passFailOrRemediatedFromJson(e.toString()))
      .toList();
}

String? passFailOrPartialToJson(enums.PassFailOrPartial? passFailOrPartial) {
  return enums.$PassFailOrPartialMap[passFailOrPartial];
}

enums.PassFailOrPartial passFailOrPartialFromJson(
  Object? passFailOrPartial, [
  enums.PassFailOrPartial? defaultValue,
]) {
  if (passFailOrPartial is String) {
    return enums.$PassFailOrPartialMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == passFailOrPartial.toLowerCase(),
            orElse: () => const MapEntry(
                enums.PassFailOrPartial.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PassFailOrPartialMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PassFailOrPartial.swaggerGeneratedUnknown;
}

List<String> passFailOrPartialListToJson(
    List<enums.PassFailOrPartial>? passFailOrPartial) {
  if (passFailOrPartial == null) {
    return [];
  }

  return passFailOrPartial.map((e) => enums.$PassFailOrPartialMap[e]!).toList();
}

List<enums.PassFailOrPartial> passFailOrPartialListFromJson(
  List? passFailOrPartial, [
  List<enums.PassFailOrPartial>? defaultValue,
]) {
  if (passFailOrPartial == null) {
    return defaultValue ?? [];
  }

  return passFailOrPartial
      .map((e) => passFailOrPartialFromJson(e.toString()))
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
