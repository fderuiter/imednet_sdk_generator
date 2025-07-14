//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/src/serializers.dart';
import 'package:openapi/src/auth/api_key_auth.dart';
import 'package:openapi/src/auth/basic_auth.dart';
import 'package:openapi/src/auth/bearer_auth.dart';
import 'package:openapi/src/auth/oauth.dart';
import 'package:openapi/src/api/administration_api.dart';
import 'package:openapi/src/api/codings_api.dart';
import 'package:openapi/src/api/forms_api.dart';
import 'package:openapi/src/api/intervals_api.dart';
import 'package:openapi/src/api/jobs_api.dart';
import 'package:openapi/src/api/queries_api.dart';
import 'package:openapi/src/api/record_revisions_api.dart';
import 'package:openapi/src/api/records_api.dart';
import 'package:openapi/src/api/sites_api.dart';
import 'package:openapi/src/api/studies_api.dart';
import 'package:openapi/src/api/subjects_api.dart';
import 'package:openapi/src/api/variables_api.dart';
import 'package:openapi/src/api/visits_api.dart';

class Openapi {
  static const String basePath = r'https://edc.prod.imednetapi.com/api/v1/edc';

  final Dio dio;
  final Serializers serializers;

  Openapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AdministrationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdministrationApi getAdministrationApi() {
    return AdministrationApi(dio, serializers);
  }

  /// Get CodingsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CodingsApi getCodingsApi() {
    return CodingsApi(dio, serializers);
  }

  /// Get FormsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FormsApi getFormsApi() {
    return FormsApi(dio, serializers);
  }

  /// Get IntervalsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IntervalsApi getIntervalsApi() {
    return IntervalsApi(dio, serializers);
  }

  /// Get JobsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  JobsApi getJobsApi() {
    return JobsApi(dio, serializers);
  }

  /// Get QueriesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueriesApi getQueriesApi() {
    return QueriesApi(dio, serializers);
  }

  /// Get RecordRevisionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RecordRevisionsApi getRecordRevisionsApi() {
    return RecordRevisionsApi(dio, serializers);
  }

  /// Get RecordsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RecordsApi getRecordsApi() {
    return RecordsApi(dio, serializers);
  }

  /// Get SitesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SitesApi getSitesApi() {
    return SitesApi(dio, serializers);
  }

  /// Get StudiesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StudiesApi getStudiesApi() {
    return StudiesApi(dio, serializers);
  }

  /// Get SubjectsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SubjectsApi getSubjectsApi() {
    return SubjectsApi(dio, serializers);
  }

  /// Get VariablesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VariablesApi getVariablesApi() {
    return VariablesApi(dio, serializers);
  }

  /// Get VisitsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VisitsApi getVisitsApi() {
    return VisitsApi(dio, serializers);
  }
}
