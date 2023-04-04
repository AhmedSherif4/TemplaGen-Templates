import 'dart:convert';
import '../../application/app_preferences.dart';
import '../../application/constants.dart';
import 'package:http/http.dart' as http;

const String applicationJson = 'application/json';
const String contentType = 'content-type';
const String accept = 'accept';
const String authorization = 'authorization';
const String defaultLanguage = 'language';

class HttpFactory {
  final http.Client httpClient;
  final AppPreferences _appPreferences;
  HttpFactory(this._appPreferences, this.httpClient);

  Future<Map<String, String>> getHeader() async {
    String language = await _appPreferences.getAppLanguage();
    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      authorization: Constants.token,
      defaultLanguage: language,
    };
    return headers;
  }

  Future<Map<String, dynamic>> getData({
    required String pathUrl,
    Map<String, String>? headers,
  }) async {
    final Uri urlAsUri = Uri.parse('${Constants.baseUrl}/$pathUrl');
    final http.Response response = await httpClient.get(
      urlAsUri,
      headers: headers,
    );
    final data = jsonDecode(
      utf8.decode(response
          .bodyBytes), // bodyBytes to avoid utf-8 problem in case that data is arabic
    );

    return {
      'statusCode': response.statusCode,
      'statusMessage': response.reasonPhrase,
      'data': data,
    };
  }

  Future<Map<String, dynamic>> putData({
    required String pathUrl,
    Map<String, String>? headers,
    Object? body,
  }) async {
    final Uri urlAsUri = Uri.parse('${Constants.baseUrl}/$pathUrl');
    final http.Response response = await httpClient.put(
      urlAsUri,
      headers: headers,
      body: body,
    );
    final data = jsonEncode(
      utf8.encode(response
          .bodyBytes as String), // bodyBytes to avoid utf-8 problem in case that data is arabic
    );

    return {
      'statusCode': response.statusCode,
      'statusMessage': response.reasonPhrase,
      'data': data,
    };
  }

  Future<Map<String, dynamic>> postData({
    required String pathUrl,
    Map<String, String>? headers,
    Object? body,
  }) async {
    final Uri urlAsUri = Uri.parse('${Constants.baseUrl}/$pathUrl');
    final http.Response response = await httpClient.post(
      urlAsUri,
      headers: headers,
      body: body,
    );
    final data = jsonEncode(
      utf8.encode(response
          .bodyBytes as String), // bodyBytes to avoid utf-8 problem in case that data is arabic
    );

    return {
      'statusCode': response.statusCode,
      'statusMessage': response.reasonPhrase,
      'data': data,
    };
  }

  Future<Map<String, dynamic>> deleteData({
    required String pathUrl,
    Map<String, String>? headers,
    Object? body,
  }) async {
    final Uri urlAsUri = Uri.parse('${Constants.baseUrl}/$pathUrl');
    final http.Response response = await httpClient.delete(
      urlAsUri,
      headers: headers,
      body: body,
    );
    final data = jsonEncode(
      utf8.encode(response
          .bodyBytes as String), // bodyBytes to avoid utf-8 problem in case that data is arabic
    );

    return {
      'statusCode': response.statusCode,
      'statusMessage': response.reasonPhrase,
      'data': data,
    };
  }
}
