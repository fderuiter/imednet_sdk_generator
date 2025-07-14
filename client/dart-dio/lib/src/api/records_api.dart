//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/components_schemas_record_create_request_item.dart';
import 'package:openapi/src/model/inline_object.dart';
import 'package:openapi/src/model/inline_object1.dart';
import 'package:openapi/src/model/inline_object2.dart';
import 'package:openapi/src/model/inline_object3.dart';
import 'package:openapi/src/model/inline_object4.dart';
import 'package:openapi/src/model/inline_object5.dart';
import 'package:openapi/src/model/record_job_status.dart';
import 'package:openapi/src/model/record_list.dart';

class RecordsApi {

  final Dio _dio;

  final Serializers _serializers;

  const RecordsApi(this._dio, this._serializers);

  /// Add new record or update subject/record data
  /// 
  ///
  /// Parameters:
  /// * [studyKey] - Study key identifying the study context for the request
  /// * [componentsSchemasRecordCreateRequestItem] - An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [RecordJobStatus] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<RecordJobStatus>> createRecords({ 
    required String studyKey,
    required BuiltList<ComponentsSchemasRecordCreateRequestItem> componentsSchemasRecordCreateRequestItem,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/studies/{studyKey}/records'.replaceAll('{' r'studyKey' '}', encodeQueryParameter(_serializers, studyKey, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(BuiltList, [FullType(ComponentsSchemasRecordCreateRequestItem)]);
      _bodyData = _serializers.serialize(componentsSchemasRecordCreateRequestItem, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    RecordJobStatus? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(RecordJobStatus),
      ) as RecordJobStatus;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<RecordJobStatus>(
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

  /// List records (eCRF instances) in a study
  /// 
  ///
  /// Parameters:
  /// * [studyKey] - Study key identifying the study context for the request
  /// * [page] - Page index to retrieve (0-based)
  /// * [size] - Number of items to return per page (max 500)
  /// * [sort] - Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
  /// * [filter] - Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
  /// * [recordDataFilter] - Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR).
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [RecordList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<RecordList>> listRecords({ 
    required String studyKey,
    int? page = 0,
    int? size = 25,
    String? sort,
    String? filter,
    String? recordDataFilter,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/studies/{studyKey}/records'.replaceAll('{' r'studyKey' '}', encodeQueryParameter(_serializers, studyKey, const FullType(String)).toString());
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
      if (filter != null) r'filter': encodeQueryParameter(_serializers, filter, const FullType(String)),
      if (recordDataFilter != null) r'recordDataFilter': encodeQueryParameter(_serializers, recordDataFilter, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    RecordList? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(RecordList),
      ) as RecordList;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<RecordList>(
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
