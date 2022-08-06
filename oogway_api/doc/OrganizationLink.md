# oogway_api.model.OrganizationLink

## Load the model package
```dart
import 'package:oogway_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ein** | **String** | The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available. | 
**charityName** | **String** | Name of the charitable organization. | [optional] 
**links** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values).  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


