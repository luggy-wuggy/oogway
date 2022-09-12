//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:oogway_api/src/api_util.dart';
import 'package:oogway_api/src/model/organization_collection_item.dart';
import 'package:oogway_api/src/model/organization_collection_search_organizations_response400.dart';
import 'package:oogway_api/src/model/organization_collection_search_organizations_response404.dart';

class OrganizationCollectionApi {

  final Dio _dio;

  final Serializers _serializers;

  const OrganizationCollectionApi(this._dio, this._serializers);

  /// searchOrganizations
  /// Retrieve a list of the organizations available in the Charity Navigator Data Store. Allows paged retrieval, simple and advanced searching.
  ///
  /// Parameters:
  /// * [appId] - 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  /// * [appKey] - 3Scale App Key: a secret key to authenticate the assigned App ID.
  /// * [pageSize] - Number of organizations to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  /// * [pageNum] - Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  /// * [search] - A simple search string that narrows the results to organizations matching the specified search terms. This is a relevance-driven search, not an exact match. Whitespace-separated terms in the search string are combined using AND logic, so adding terms has the effect of narrowing the search. By default, the search looks for matches in all string or text properties. The searchType parameter can change the field values included in the search.
  /// * [searchType] - .Used in combination with the `search` parameter, specifies the type of .search to be performed. . .| Value     | Search Behavior                       | .| --------- | ------------------------------------- | .| DEFAULT   | Search in all string properties.      | .| NAME_ONLY | Search only in the Organization name. | . .Omitting the searchType parameter has the same effect as specifying \"DEFAULT\". . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  /// * [rated] - .Specifies whether to include only rated charities or unrated charities. By .default, all charities will be returned. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `rated=TRUE`<br/>`rated=1`<br/>`rated` | Return only rated charities. | .| `rated=FALSE`<br/>`rated=0` | Return only unrated charities. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  /// * [categoryID] - ID of a Category. Search results will be filtered to include only organizations in the specified category.
  /// * [causeID] - ID of a Cause. Search results will be filtered to include only organizations in the specified cause.
  /// * [fundraisingOrgs] - .Specifies whether to include or exclude organizations flagged by Charity .Navigator as fundraising organizations. By default, all charities will be .returned.<br/> [Learn .More](javascript:openBrWindow('http://www.charitynavigator.org/index.cfm?bay=glossary.word&gid=95&print=1','glossary','scrollbars=yes,width=760,height=400') . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .Note that a charity that has a \"Moderate\" or \"High\" Severity Advisory has its rating superseded by the Advisory .and will not show up with the rated filter on. A rated charity with \"Low\" Severity Advisory is still considered rated .and will still be found with the filter on. . .| Usage | Search Behavior | .| --- | --- | .| `fundraisingOrgs=TRUE`<br/>`fundraisingOrgs=1`<br/>`fundraisingOrgs` | Return only fundraising organizations. | .| `fundraisingOrgs=FALSE`<br/>`fundraisingOrgs=0` | Return only charities that are not fundraising organizations. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  /// * [state] - If set to a valid 2-letter state code (not case-sensitive), filters search results to include only organizations in the specified state. An invalid state code will respond with a 400 error.
  /// * [city] - Filters search results to include only organizations in cities whose names match the specified string. This uses fuzzy matching, and the city name may be given as a partial string.
  /// * [zip] - Filters search results to include only organizations in the specified zip code.
  /// * [minRating] - Filters search results to include only organizations with a rating greater than or equal to the specified value. Must be an integer value betwen 0 and 4, inclusive. Must be less than or equal to maxRating, if specified.
  /// * [maxRating] - Filters search results to include only organizations with a rating less than or equal to the specified value. Must be an integer value betwen 0 and 4, inclusive. Must be greater than or equal to minRating, if specified.
  /// * [sizeRange] - .Filters search results to include only organizations within a given size .bracket, as measured in annual Total Expenses. possible values include: . .| Value | Range             | .| ----- | ----------------- | .| 1     | Up to $3.5MM      | .| 2     | $3.5MM to $13.5MM | .| 3     | $13.5MM and up    | .
  /// * [donorPrivacy] - .Specifies whether to include or exclude organizations that have a donor .privacy policy.  By default, all charities are included, regardless of donor .privacy policy. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `donorPrivacy=TRUE`<br/>`donorPrivacy=1`<br/>`donorPrivacy` | Return only organizations that have a donor privacy policy. | .| `donorPrivacy=FALSE`<br/>`donorPrivacy=0` | Return only organizations that do not have a donor privacy policy. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  /// * [scopeOfWork] - Filters search results to include only organizations with a given scope of work. Possible values are \"ALL\" (the default), \"REGIONAL\", \"NATIONAL\", or \"INTERNATIONAL\"
  /// * [cfcCharities] - .Specifies whether to include or exclude organizations that are included in .the Combined Federal Campaign, the largest workplace giving campaign in USA. By .default, all organizations are included.<br/> [Learn .More](https://www.charitynavigator.org/index.cfm?bay=glossary.word&word=CFC&print=1.) . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `cfcCharities=TRUE`<br/>`cfcCharities=1`<br/>`cfcCharities` | Return only CFC charities. | .| `cfcCharities=FALSE`<br/>`cfcCharities=0` | Return only non-CFC charities. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  /// * [noGovSupport] - .Specifies whether to include or exclude organizations that do not receive .government support. By default, all organizations are included. . .Can be specified as `TRUE` or `FALSE`, `0` or `1`, or included without a value, .which is equivalent to `TRUE` or `1`. . .| Usage | Search Behavior | .| --- | --- | .| `noGovSupport=TRUE`<br/>`noGovSupport=1`<br/>`noGovSupport` | Return only charities that do not receive government support. | .| `noGovSupport=FALSE`<br/>`noGovSupport=0` | Return only charities that receive government support. | .| (default) | Return all charities. | . .Any value other than the ones specified in the table above will cause an HTTP .400 error response.
  /// * [sort] - .Specifies how results should be sorted. By default, results are sorted by .increasing `ein` value unless a `search` string is specified, in which case .results are sorted by decreasing relevance to the search string. . .This parameter takes the form of a sort property and an optional direction .indicator, separated by a colon. E.g. `NAME` or `NAME:ASC`. . .Sort property can be any of the following (examples indicate default direction): . .| Property | Example | Sort Behavior | .| ----- | ------- | ------------- | .| `NAME` | `sort=NAME:ASC` | Sort alphabetically by charity name | .| `RATING` | `sort=RATING:DESC` | Sort numerically by overall ratings score. Implies `rated=true`. | .| `RELEVANCE` | `sort=RELEVANCE:DESC` | Sort numerically by search relevance score | . .Currently only one sort property is allowed. . .Any of the following usages will result in an HTTP 400 error response: . .* Sort field is not one of the values listed above. .* Sort direction is provided and is neither `ASC` nor `DESC`. .* Sort field is `RATING` and `rated=false` is also specified. .* Sort field is `RELEVANCE` and the `search` parameter is not specified.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<OrganizationCollectionItem>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<OrganizationCollectionItem>>> searchOrganizations({ 
    required String appId,
    required String appKey,
    int? pageSize,
    int? pageNum,
    String? search,
    String? searchType,
    bool? rated,
    String? categoryID,
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
    String? sort,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Organizations';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'app_id': encodeQueryParameter(_serializers, appId, const FullType(String)),
      r'app_key': encodeQueryParameter(_serializers, appKey, const FullType(String)),
      if (pageSize != null) r'pageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      if (pageNum != null) r'pageNum': encodeQueryParameter(_serializers, pageNum, const FullType(int)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (searchType != null) r'searchType': encodeQueryParameter(_serializers, searchType, const FullType(String)),
      if (rated != null) r'rated': encodeQueryParameter(_serializers, rated, const FullType(bool)),
      if (categoryID != null) r'categoryID': encodeQueryParameter(_serializers, categoryID, const FullType(String)),
      if (causeID != null) r'causeID': encodeQueryParameter(_serializers, causeID, const FullType(String)),
      if (fundraisingOrgs != null) r'fundraisingOrgs': encodeQueryParameter(_serializers, fundraisingOrgs, const FullType(bool)),
      if (state != null) r'state': encodeQueryParameter(_serializers, state, const FullType(String)),
      if (city != null) r'city': encodeQueryParameter(_serializers, city, const FullType(String)),
      if (zip != null) r'zip': encodeQueryParameter(_serializers, zip, const FullType(String)),
      if (minRating != null) r'minRating': encodeQueryParameter(_serializers, minRating, const FullType(int)),
      if (maxRating != null) r'maxRating': encodeQueryParameter(_serializers, maxRating, const FullType(int)),
      if (sizeRange != null) r'sizeRange': encodeQueryParameter(_serializers, sizeRange, const FullType(int)),
      if (donorPrivacy != null) r'donorPrivacy': encodeQueryParameter(_serializers, donorPrivacy, const FullType(bool)),
      if (scopeOfWork != null) r'scopeOfWork': encodeQueryParameter(_serializers, scopeOfWork, const FullType(int)),
      if (cfcCharities != null) r'cfcCharities': encodeQueryParameter(_serializers, cfcCharities, const FullType(bool)),
      if (noGovSupport != null) r'noGovSupport': encodeQueryParameter(_serializers, noGovSupport, const FullType(bool)),
      if (sort != null) r'sort': encodeQueryParameter(_serializers, sort, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<OrganizationCollectionItem> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(OrganizationCollectionItem)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<OrganizationCollectionItem>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<OrganizationCollectionItem>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
