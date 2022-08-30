//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/src/serializers.dart';
import 'package:openapi/src/auth/api_key_auth.dart';
import 'package:openapi/src/auth/basic_auth.dart';
import 'package:openapi/src/auth/bearer_auth.dart';
import 'package:openapi/src/auth/oauth.dart';
import 'package:openapi/src/api/active_advisory_collection_api.dart';
import 'package:openapi/src/api/advisory_collection_api.dart';
import 'package:openapi/src/api/advisory_object_api.dart';
import 'package:openapi/src/api/category_collection_content_plan_api.dart';
import 'package:openapi/src/api/list_collection_content_plan_api.dart';
import 'package:openapi/src/api/list_object_content_plan_api.dart';
import 'package:openapi/src/api/organization_collection_api.dart';
import 'package:openapi/src/api/organization_object_api.dart';
import 'package:openapi/src/api/rating_collection_content_plan_api.dart';
import 'package:openapi/src/api/rating_object_content_plan_api.dart';

class Openapi {
  static const String basePath = r'https://api.data.charitynavigator.org/v2';

  final Dio dio;
  final Serializers serializers;

  Openapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 5000,
              receiveTimeout: 3000,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get ActiveAdvisoryCollectionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ActiveAdvisoryCollectionApi getActiveAdvisoryCollectionApi() {
    return ActiveAdvisoryCollectionApi(dio, serializers);
  }

  /// Get AdvisoryCollectionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdvisoryCollectionApi getAdvisoryCollectionApi() {
    return AdvisoryCollectionApi(dio, serializers);
  }

  /// Get AdvisoryObjectApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdvisoryObjectApi getAdvisoryObjectApi() {
    return AdvisoryObjectApi(dio, serializers);
  }

  /// Get CategoryCollectionContentPlanApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CategoryCollectionContentPlanApi getCategoryCollectionContentPlanApi() {
    return CategoryCollectionContentPlanApi(dio, serializers);
  }

  /// Get ListCollectionContentPlanApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ListCollectionContentPlanApi getListCollectionContentPlanApi() {
    return ListCollectionContentPlanApi(dio, serializers);
  }

  /// Get ListObjectContentPlanApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ListObjectContentPlanApi getListObjectContentPlanApi() {
    return ListObjectContentPlanApi(dio, serializers);
  }

  /// Get OrganizationCollectionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrganizationCollectionApi getOrganizationCollectionApi() {
    return OrganizationCollectionApi(dio, serializers);
  }

  /// Get OrganizationObjectApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrganizationObjectApi getOrganizationObjectApi() {
    return OrganizationObjectApi(dio, serializers);
  }

  /// Get RatingCollectionContentPlanApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RatingCollectionContentPlanApi getRatingCollectionContentPlanApi() {
    return RatingCollectionContentPlanApi(dio, serializers);
  }

  /// Get RatingObjectContentPlanApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RatingObjectContentPlanApi getRatingObjectContentPlanApi() {
    return RatingObjectContentPlanApi(dio, serializers);
  }
}
