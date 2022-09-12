# oogway_api.api.OrganizationObjectApi

## Load the API package
```dart
import 'package:oogway_api/api.dart';
```

All URIs are relative to *https://api.data.charitynavigator.org/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrganization**](OrganizationObjectApi.md#getorganization) | **GET** /Organizations/{ein} | 


# **getOrganization**
> OrganizationObject getOrganization(ein, appId, appKey)



Retrieve full detail of a single Organization. This is a composite set of information describing an organization that may engage in charitable work. Normally the Organization data structure includes a single legal entity, though legal entity information may be excluded in exceptional cases.

### Example
```dart
import 'package:oogway_api/api.dart';

final api = OogwayApi().getOrganizationObjectApi();
final String ein = ein_example; // String | 
final String appId = appId_example; // String | 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
final String appKey = appKey_example; // String | 3Scale App Key: a secret key to authenticate the assigned App ID.

try {
    final response = api.getOrganization(ein, appId, appKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OrganizationObjectApi->getOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ein** | **String**|  | 
 **appId** | **String**| 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal. | 
 **appKey** | **String**| 3Scale App Key: a secret key to authenticate the assigned App ID. | 

### Return type

[**OrganizationObject**](OrganizationObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
