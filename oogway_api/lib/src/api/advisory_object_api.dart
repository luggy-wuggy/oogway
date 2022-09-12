//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:oogway_api/src/api_util.dart';
import 'package:oogway_api/src/model/advisory.dart';
import 'package:oogway_api/src/model/advisory_object_get_advisory_response400.dart';
import 'package:oogway_api/src/model/advisory_object_get_advisory_response404.dart';

class AdvisoryObjectApi {

  final Dio _dio;

  final Serializers _serializers;

  const AdvisoryObjectApi(this._dio, this._serializers);

  /// getAdvisory
  /// Retrieve full details of a single Advisory, under a given organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.
  ///
  /// Parameters:
  /// * [ein] 
  /// * [advisoryID] 
  /// * [appId] - 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  /// * [appKey] - 3Scale App Key: a secret key to authenticate the assigned App ID.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Advisory] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<Advisory>> getAdvisory({ 
    required String ein,
    required String advisoryID,
    required String appId,
    required String appKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Organizations/{ein}/Advisories/{AdvisoryID}'.replaceAll('{' r'ein' '}', ein.toString()).replaceAll('{' r'AdvisoryID' '}', advisoryID.toString());
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Advisory _responseData;

    try {
      const _responseType = FullType(Advisory);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as Advisory;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<Advisory>(
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
