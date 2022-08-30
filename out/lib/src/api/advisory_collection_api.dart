//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/advisory_collection_get_advisories_response400.dart';
import 'package:openapi/src/model/advisory_collection_get_advisories_response404.dart';
import 'package:openapi/src/model/advisory_collection_item.dart';

class AdvisoryCollectionApi {

  final Dio _dio;

  final Serializers _serializers;

  const AdvisoryCollectionApi(this._dio, this._serializers);

  /// getAdvisories
  /// Retrieve the full set of Charity Navigator advisories for a specified organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.
  ///
  /// Parameters:
  /// * [ein] 
  /// * [appId] - 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  /// * [appKey] - 3Scale App Key: a secret key to authenticate the assigned App ID.
  /// * [pageSize] - Number of objects to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
  /// * [pageNum] - Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
  /// * [status] - .An optional filter parameter to limit the Advisories returned, based on .status: . .| Status Value | Advisories Included                                 | .| ------------ | --------------------------------------------------- | .| ALL | All advisories included, regardless of status.      | .| ACTIVE       | Includes only advisories that are currently active. | .| REMOVED      | Includes only advisories that have been removed.    | . .Omitting the status property is the equivalent of specifying ALL. Any value .other than the ones listed above will result in an HTTP error 400.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<AdvisoryCollectionItem>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<AdvisoryCollectionItem>>> getAdvisories({ 
    required String ein,
    required String appId,
    required String appKey,
    int? pageSize,
    int? pageNum,
    String? status,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Organizations/{ein}/Advisories'.replaceAll('{' r'ein' '}', ein.toString());
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
      if (status != null) r'status': encodeQueryParameter(_serializers, status, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<AdvisoryCollectionItem> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(AdvisoryCollectionItem)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<AdvisoryCollectionItem>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<AdvisoryCollectionItem>>(
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
