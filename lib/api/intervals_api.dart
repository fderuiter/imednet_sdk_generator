//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IntervalsApi {
  IntervalsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List intervals (visit definitions) in a study
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
  Future<Response> listIntervalsWithHttpInfo(String studyKey, { int? page, int? size, String? sort, String? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/studies/{studyKey}/intervals'
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

  /// List intervals (visit definitions) in a study
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
  Future<IntervalList?> listIntervals(String studyKey, { int? page, int? size, String? sort, String? filter, }) async {
    final response = await listIntervalsWithHttpInfo(studyKey,  page: page, size: size, sort: sort, filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IntervalList',) as IntervalList;
    
    }
    return null;
  }
}
