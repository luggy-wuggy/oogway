//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:oogway_api/src/api_util.dart';
import 'package:oogway_api/src/model/category_collection_item.dart';

class CategoryCollectionContentPlanApi {

  final Dio _dio;

  final Serializers _serializers;

  const CategoryCollectionContentPlanApi(this._dio, this._serializers);

  /// getCategories
  /// Returns metadata for Charity Navigator&#39;s classification hierarchy for charitable Organizations. Category is the top-level classifier, and each category may contain a number of Causes. &lt;br/&gt; ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \&quot;Included with the paid Content Subscription.\&quot;)
  ///
  /// Parameters:
  /// * [appId] - 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
  /// * [appKey] - 3Scale App Key: a secret key to authenticate the assigned App ID.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<CategoryCollectionItem>] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<BuiltList<CategoryCollectionItem>>> getCategories({ 
    required String appId,
    required String appKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Categories';
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

    BuiltList<CategoryCollectionItem> _responseData;

    try {
      const _responseType = FullType(BuiltList, [FullType(CategoryCollectionItem)]);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as BuiltList<CategoryCollectionItem>;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<BuiltList<CategoryCollectionItem>>(
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
