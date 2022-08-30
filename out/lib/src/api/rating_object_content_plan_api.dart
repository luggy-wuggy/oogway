//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/rating_object.dart';
import 'package:openapi/src/model/rating_object_get_rating_response400.dart';
import 'package:openapi/src/model/rating_object_get_rating_response404.dart';

class RatingObjectContentPlanApi {

  final Dio _dio;

  final Serializers _serializers;

  const RatingObjectContentPlanApi(this._dio, this._serializers);

  /// getRating
  /// Retrieve a single Rating object for an Organization. Each rating is listed once, under its primary &#x60;referenceOrganization&#x60;. Note that the rating may apply to other organizations, and this is represented by &#x60;includedOrganizations&#x60;, which is a collection of hyperlinks to all of the organizations to which the rating applies. The rating is a point-in-time assessment provided by Charity Navigator, along with related metrics and ratios taken from financial statements for a fiscal year, on which the rating is based. &lt;br/&gt; ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \&quot;Included with the paid Content Subscription.\&quot;)
  ///
  /// Parameters:
  /// * [ein] 
  /// * [ratingID] 
  /// * [appId] - 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  /// * [appKey] - 3Scale App Key: a secret key to authenticate the assigned App ID.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [RatingObject] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<RatingObject>> getRating({ 
    required String ein,
    required String ratingID,
    required String appId,
    required String appKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Organizations/{ein}/Ratings/{RatingID}'.replaceAll('{' r'ein' '}', ein.toString()).replaceAll('{' r'RatingID' '}', ratingID.toString());
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

    RatingObject _responseData;

    try {
      const _responseType = FullType(RatingObject);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as RatingObject;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<RatingObject>(
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
