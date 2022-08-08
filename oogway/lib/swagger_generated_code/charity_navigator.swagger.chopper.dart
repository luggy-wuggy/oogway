//Generated code

part of 'charity_navigator.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$CharityNavigator extends CharityNavigator {
  _$CharityNavigator([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CharityNavigator;

  @override
  Future<Response<List<OrganizationCollectionItem>>> _organizationsGet(
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
    final $url = '/Organizations';
    final $params = <String, dynamic>{
      'app_id': appId,
      'app_key': appKey,
      'pageSize': pageSize,
      'pageNum': pageNum,
      'search': search,
      'searchType': searchType,
      'rated': rated,
      'categoryID': categoryID,
      'causeID': causeID,
      'fundraisingOrgs': fundraisingOrgs,
      'state': state,
      'city': city,
      'zip': zip,
      'minRating': minRating,
      'maxRating': maxRating,
      'sizeRange': sizeRange,
      'donorPrivacy': donorPrivacy,
      'scopeOfWork': scopeOfWork,
      'cfcCharities': cfcCharities,
      'noGovSupport': noGovSupport,
      'sort': sort
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<OrganizationCollectionItem>,
        OrganizationCollectionItem>($request);
  }

  @override
  Future<Response<OrganizationObject>> _organizationsEinGet(
      {required String? ein, required String? appId, required String? appKey}) {
    final $url = '/Organizations/${ein}';
    final $params = <String, dynamic>{'app_id': appId, 'app_key': appKey};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<OrganizationObject, OrganizationObject>($request);
  }

  @override
  Future<Response<List<AdvisoryCollectionItem>>> _organizationsEinAdvisoriesGet(
      {required String? ein,
      required String? appId,
      required String? appKey,
      int? pageSize,
      int? pageNum,
      String? status}) {
    final $url = '/Organizations/${ein}/Advisories';
    final $params = <String, dynamic>{
      'app_id': appId,
      'app_key': appKey,
      'pageSize': pageSize,
      'pageNum': pageNum,
      'status': status
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<List<AdvisoryCollectionItem>, AdvisoryCollectionItem>($request);
  }

  @override
  Future<Response<Advisory>> _organizationsEinAdvisoriesAdvisoryIDGet(
      {required String? ein,
      required String? advisoryID,
      required String? appId,
      required String? appKey}) {
    final $url = '/Organizations/${ein}/Advisories/${advisoryID}';
    final $params = <String, dynamic>{'app_id': appId, 'app_key': appKey};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Advisory, Advisory>($request);
  }

  @override
  Future<Response<List<ActiveAdvisoryCollectionItem>>> _advisoryGet(
      {required String? appId,
      required String? appKey,
      int? pageSize,
      int? pageNum}) {
    final $url = '/Advisory';
    final $params = <String, dynamic>{
      'app_id': appId,
      'app_key': appKey,
      'pageSize': pageSize,
      'pageNum': pageNum
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<ActiveAdvisoryCollectionItem>,
        ActiveAdvisoryCollectionItem>($request);
  }
}
