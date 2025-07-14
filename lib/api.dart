//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/administration_api.dart';
part 'api/codings_api.dart';
part 'api/forms_api.dart';
part 'api/intervals_api.dart';
part 'api/jobs_api.dart';
part 'api/queries_api.dart';
part 'api/record_revisions_api.dart';
part 'api/records_api.dart';
part 'api/sites_api.dart';
part 'api/studies_api.dart';
part 'api/subjects_api.dart';
part 'api/variables_api.dart';
part 'api/visits_api.dart';

part 'model/coding.dart';
part 'model/coding_list.dart';
part 'model/components_schemas_interval_forms_item.dart';
part 'model/components_schemas_metadata_error.dart';
part 'model/components_schemas_record_create_request_item.dart';
part 'model/form.dart';
part 'model/form_list.dart';
part 'model/inline_object.dart';
part 'model/inline_object1.dart';
part 'model/inline_object2.dart';
part 'model/inline_object3.dart';
part 'model/inline_object4.dart';
part 'model/inline_object5.dart';
part 'model/interval.dart';
part 'model/interval_list.dart';
part 'model/job.dart';
part 'model/keyword.dart';
part 'model/metadata.dart';
part 'model/pagination.dart';
part 'model/query.dart';
part 'model/query_comment.dart';
part 'model/query_list.dart';
part 'model/record.dart';
part 'model/record_job_status.dart';
part 'model/record_list.dart';
part 'model/record_revision.dart';
part 'model/record_revision_list.dart';
part 'model/role.dart';
part 'model/site.dart';
part 'model/site_list.dart';
part 'model/sort.dart';
part 'model/study.dart';
part 'model/study_list.dart';
part 'model/subject.dart';
part 'model/subject_list.dart';
part 'model/user.dart';
part 'model/user_list.dart';
part 'model/variable.dart';
part 'model/variable_list.dart';
part 'model/visit.dart';
part 'model/visit_list.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
