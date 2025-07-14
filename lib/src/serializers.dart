//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/coding.dart';
import 'package:openapi/src/model/coding_list.dart';
import 'package:openapi/src/model/components_schemas_interval_forms_item.dart';
import 'package:openapi/src/model/components_schemas_metadata_error.dart';
import 'package:openapi/src/model/components_schemas_record_create_request_item.dart';
import 'package:openapi/src/model/form.dart';
import 'package:openapi/src/model/form_list.dart';
import 'package:openapi/src/model/inline_object.dart';
import 'package:openapi/src/model/inline_object1.dart';
import 'package:openapi/src/model/inline_object2.dart';
import 'package:openapi/src/model/inline_object3.dart';
import 'package:openapi/src/model/inline_object4.dart';
import 'package:openapi/src/model/inline_object5.dart';
import 'package:openapi/src/model/interval.dart';
import 'package:openapi/src/model/interval_list.dart';
import 'package:openapi/src/model/job.dart';
import 'package:openapi/src/model/keyword.dart';
import 'package:openapi/src/model/metadata.dart';
import 'package:openapi/src/model/pagination.dart';
import 'package:openapi/src/model/query.dart';
import 'package:openapi/src/model/query_comment.dart';
import 'package:openapi/src/model/query_list.dart';
import 'package:openapi/src/model/record.dart';
import 'package:openapi/src/model/record_job_status.dart';
import 'package:openapi/src/model/record_list.dart';
import 'package:openapi/src/model/record_revision.dart';
import 'package:openapi/src/model/record_revision_list.dart';
import 'package:openapi/src/model/role.dart';
import 'package:openapi/src/model/site.dart';
import 'package:openapi/src/model/site_list.dart';
import 'package:openapi/src/model/sort.dart';
import 'package:openapi/src/model/study.dart';
import 'package:openapi/src/model/study_list.dart';
import 'package:openapi/src/model/subject.dart';
import 'package:openapi/src/model/subject_list.dart';
import 'package:openapi/src/model/user.dart';
import 'package:openapi/src/model/user_list.dart';
import 'package:openapi/src/model/variable.dart';
import 'package:openapi/src/model/variable_list.dart';
import 'package:openapi/src/model/visit.dart';
import 'package:openapi/src/model/visit_list.dart';

part 'serializers.g.dart';

@SerializersFor([
  Coding,
  CodingList,
  ComponentsSchemasIntervalFormsItem,
  ComponentsSchemasMetadataError,
  ComponentsSchemasRecordCreateRequestItem,
  Form,
  FormList,
  InlineObject,
  InlineObject1,
  InlineObject2,
  InlineObject3,
  InlineObject4,
  InlineObject5,
  Interval,
  IntervalList,
  Job,
  Keyword,
  Metadata,
  Pagination,
  Query,
  QueryComment,
  QueryList,
  Record,
  RecordJobStatus,
  RecordList,
  RecordRevision,
  RecordRevisionList,
  Role,
  Site,
  SiteList,
  Sort,
  Study,
  StudyList,
  Subject,
  SubjectList,
  User,
  UserList,
  Variable,
  VariableList,
  Visit,
  VisitList,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ComponentsSchemasRecordCreateRequestItem)]),
        () => ListBuilder<ComponentsSchemasRecordCreateRequestItem>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
