//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/inline_object.dart';
import 'package:openapi/src/model/inline_object1.dart';
import 'package:openapi/src/model/inline_object2.dart';
import 'package:openapi/src/model/inline_object3.dart';
import 'package:openapi/src/model/inline_object5.dart';
import 'package:openapi/src/model/user_list.dart';

class AdministrationApi {

  final Dio _dio;

  final Serializers _serializers;

  const AdministrationApi(this._dio, this._serializers);

  /// List users and their roles in a study
  /// 
  ///
  /// Parameters:
  /// * [studyKey] - Study key identifying the study context for the request
  /// * [page] - Page index to retrieve (0-based)
  /// * [size] - Number of items to return per page (max 500)
  /// * [sort] - Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
  /// * [includeInactive] - For user listing, whether to include inactive users
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UserList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserList>> listUsers({ 
    required String studyKey,
    int? page = 0,
    int? size = 25,
    String? sort,
    bool? includeInactive = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/studies/{studyKey}/users'.replaceAll('{' r'studyKey' '}', encodeQueryParameter(_serializers, studyKey, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'x-api-key',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'securityKeyAuth',
            'keyName': 'x-imn-security-key',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (size != null) r'size': encodeQueryParameter(_serializers, size, const FullType(int)),
      if (sort != null) r'sort': encodeQueryParameter(_serializers, sort, const FullType(String)),
      if (includeInactive != null) r'includeInactive': encodeQueryParameter(_serializers, includeInactive, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    UserList? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(UserList),
      ) as UserList;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UserList>(
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
