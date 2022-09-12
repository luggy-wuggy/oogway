//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:oogway_api/src/api_util.dart';
import 'package:oogway_api/src/model/organization_object.dart';
import 'package:oogway_api/src/model/organization_object_get_organization_response400.dart';
import 'package:oogway_api/src/model/organization_object_get_organization_response404.dart';

class OrganizationObjectApi {

  final Dio _dio;

  final Serializers _serializers;

  const OrganizationObjectApi(this._dio, this._serializers);

  /// getOrganization
  /// Retrieve full detail of a single Organization. This is a composite set of information describing an organization that may engage in charitable work. Normally the Organization data structure includes a single legal entity, though legal entity information may be excluded in exceptional cases.
  ///
  /// Parameters:
  /// * [ein] 
  /// * [appId] - 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  /// * [appKey] - 3Scale App Key: a secret key to authenticate the assigned App ID.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OrganizationObject] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<OrganizationObject>> getOrganization({ 
    required String ein,
    required String appId,
    required String appKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Organizations/{ein}'.replaceAll('{' r'ein' '}', ein.toString());
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

    OrganizationObject _responseData;

    try {
      const _responseType = FullType(OrganizationObject);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as OrganizationObject;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<OrganizationObject>(
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
