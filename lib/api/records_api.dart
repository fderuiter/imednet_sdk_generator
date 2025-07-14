//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RecordsApi {
  RecordsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add new record or update subject/record data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] studyKey (required):
  ///   Study key identifying the study context for the request
  ///
  /// * [List<ComponentsSchemasRecordCreateRequestItem>] componentsSchemasRecordCreateRequestItem (required):
  ///   An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).
  Future<Response> createRecordsWithHttpInfo(String studyKey, List<ComponentsSchemasRecordCreateRequestItem> componentsSchemasRecordCreateRequestItem,) async {
    // ignore: prefer_const_declarations
    final path = r'/studies/{studyKey}/records'
      .replaceAll('{studyKey}', studyKey);

    // ignore: prefer_final_locals
    Object? postBody = componentsSchemasRecordCreateRequestItem;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add new record or update subject/record data
  ///
  /// Parameters:
  ///
  /// * [String] studyKey (required):
  ///   Study key identifying the study context for the request
  ///
  /// * [List<ComponentsSchemasRecordCreateRequestItem>] componentsSchemasRecordCreateRequestItem (required):
  ///   An array of record objects defining the operation to perform (subject registration, record creation, or scheduled record update).
  Future<RecordJobStatus?> createRecords(String studyKey, List<ComponentsSchemasRecordCreateRequestItem> componentsSchemasRecordCreateRequestItem,) async {
    final response = await createRecordsWithHttpInfo(studyKey, componentsSchemasRecordCreateRequestItem,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecordJobStatus',) as RecordJobStatus;
    
    }
    return null;
  }

  /// List records (eCRF instances) in a study
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] studyKey (required):
  ///   Study key identifying the study context for the request
  ///
  /// * [int] page:
  ///   Page index to retrieve (0-based)
  ///
  /// * [int] size:
  ///   Number of items to return per page (max 500)
  ///
  /// * [String] sort:
  ///   Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
  ///
  /// * [String] filter:
  ///   Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
  ///
  /// * [String] recordDataFilter:
  ///   Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR).
  Future<Response> listRecordsWithHttpInfo(String studyKey, { int? page, int? size, String? sort, String? filter, String? recordDataFilter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/studies/{studyKey}/records'
      .replaceAll('{studyKey}', studyKey);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (recordDataFilter != null) {
      queryParams.addAll(_queryParams('', 'recordDataFilter', recordDataFilter));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List records (eCRF instances) in a study
  ///
  /// Parameters:
  ///
  /// * [String] studyKey (required):
  ///   Study key identifying the study context for the request
  ///
  /// * [int] page:
  ///   Page index to retrieve (0-based)
  ///
  /// * [int] size:
  ///   Number of items to return per page (max 500)
  ///
  /// * [String] sort:
  ///   Sorting criteria in the format `property,ASC` or `property,DESC`. Can be repeated.
  ///
  /// * [String] filter:
  ///   Optional filter criteria to apply, in the format `attribute==value` with support for >, >=, <, <=, !=. Multiple criteria can be combined with `;` (AND) or `,` (OR).
  ///
  /// * [String] recordDataFilter:
  ///   Optional filter criteria to apply on recordData fields (question responses). Supports ==, !=, <, <=, >, >=, =~ (contains) and can combine multiple criteria with `;` (AND) or `,` (OR).
  Future<RecordList?> listRecords(String studyKey, { int? page, int? size, String? sort, String? filter, String? recordDataFilter, }) async {
    final response = await listRecordsWithHttpInfo(studyKey,  page: page, size: size, sort: sort, filter: filter, recordDataFilter: recordDataFilter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecordList',) as RecordList;
    
    }
    return null;
  }
}
