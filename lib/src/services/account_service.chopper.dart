// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AccountService extends AccountService {
  _$AccountService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AccountService;

  @override
  Future<Response<User>> verifyCredentials(
      {bool includeEntities, bool skipStatus, bool includeEmail}) {
    final $url = '/account/verify_credentials.json';
    final $params = <String, dynamic>{
      'include_entities': includeEntities,
      'skip_status': skipStatus,
      'include_email': includeEmail
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<User, User>($request);
  }
}
