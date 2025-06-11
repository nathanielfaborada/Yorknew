import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Books Group Code

class BooksGroup {
  static String getBaseUrl() => 'https://api.nytimes.com/';
  static Map<String, String> headers = {
    'Content-type': 'application/json',
  };
  static PublisherCall publisherCall = PublisherCall();
  static PhotoUrlCall photoUrlCall = PhotoUrlCall();
}

class PublisherCall {
  Future<ApiCallResponse> call({
    List<String>? publisherList,
    List<String>? photoURLList,
  }) async {
    final baseUrl = BooksGroup.getBaseUrl();
    final publisher = _serializeList(publisherList);
    final photoURL = _serializeList(photoURLList);

    return ApiManager.instance.makeApiCall(
      callName: 'Publisher',
      apiUrl:
          '${baseUrl}svc/books/v3/lists/current/hardcover-fiction.json?api-key=z9vMI8z1dlIkcPAYT255wqx6jrHy86Kh',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? publisher(dynamic response) => (getJsonField(
        response,
        r'''$.results.books[:].publisher''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PhotoUrlCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BooksGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'PhotoUrl',
      apiUrl:
          '${baseUrl}svc/books/v3/lists/current/hardcover-fiction.json?api-key=z9vMI8z1dlIkcPAYT255wqx6jrHy86Kh',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? photoURL(dynamic response) => (getJsonField(
        response,
        r'''$.results.books[:].book_image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? author(dynamic response) => (getJsonField(
        response,
        r'''$.results.books[:].author''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.results.books[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End Books Group Code

class BookDetailsCall {
  static Future<ApiCallResponse> call({
    String? urlPhoto = '',
    List<String>? publisherList,
  }) async {
    final publisher = _serializeList(publisherList);

    return ApiManager.instance.makeApiCall(
      callName: 'BookDetails',
      apiUrl:
          'https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=z9vMI8z1dlIkcPAYT255wqx6jrHy86Kh',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'urlPhoto': urlPhoto,
        'publisher': publisher,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? urlPhoto(dynamic response) => (getJsonField(
        response,
        r'''$.results.books[:].book_image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? publisher(dynamic response) => (getJsonField(
        response,
        r'''$.results.books[:].publisher''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CreateuserCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{"p_email":"${escapeStringForJson(email)}",
"p_password":"${escapeStringForJson(password)}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createuser',
      apiUrl:
          'https://fidbuznjumodiknyzoku.supabase.co/rest/v1/rpc/insert_user',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZpZGJ1em5qdW1vZGlrbnl6b2t1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc0ODUzMTcsImV4cCI6MjA2MzA2MTMxN30.D4n-Wj_5Dn1l8ec6uVTvggkq3CTTL9gvuGFndMh_ahY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].password''',
      ));
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
}

class AddpostsdasCall {
  static Future<ApiCallResponse> call({
    String? pContent = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_content": "${escapeStringForJson(pContent)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addpostsdas',
      apiUrl:
          'https://fidbuznjumodiknyzoku.supabase.co/rest/v1/rpc/add_post_with_hashtags',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZpZGJ1em5qdW1vZGlrbnl6b2t1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc0ODUzMTcsImV4cCI6MjA2MzA2MTMxN30.D4n-Wj_5Dn1l8ec6uVTvggkq3CTTL9gvuGFndMh_ahY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].password''',
      ));
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
}

class InsertemployeeCall {
  static Future<ApiCallResponse> call({
    String? pFirstName = '',
    String? pLastName = '',
    String? pDepartmentName = '',
    String? pUserId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_first_name": "${escapeStringForJson(pFirstName)}",
  "p_last_name":"${escapeStringForJson(pLastName)}",
  "p_department_name":"${escapeStringForJson(pDepartmentName)}",
  "p_user_id":"${escapeStringForJson(pUserId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insertemployee',
      apiUrl:
          'https://fidbuznjumodiknyzoku.supabase.co/rest/v1/rpc/insert_employee',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZpZGJ1em5qdW1vZGlrbnl6b2t1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc0ODUzMTcsImV4cCI6MjA2MzA2MTMxN30.D4n-Wj_5Dn1l8ec6uVTvggkq3CTTL9gvuGFndMh_ahY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].password''',
      ));
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
