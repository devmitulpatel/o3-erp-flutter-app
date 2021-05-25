import 'api_manager.dart';

Future<dynamic> loginURLCall({
  String email = '',
  String password = '',
  String deviceName = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'Login URL ',
      apiDomain: 'o3-api.test',
      apiEndpoint: 'api/v1/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {
        'email': email,
        'password': password,
        'device_name': deviceName,
      },
      returnResponse: true,
    );
