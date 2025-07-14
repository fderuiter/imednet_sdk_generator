cmake_minimum_required(VERSION 3.5)

project(QtOpenAPIClient)

set(CMAKE_AUTOMOC ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core Network Gui)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Network Gui)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

add_library(${PROJECT_NAME}
  OAICoding.h
  OAICodingList.h
  OAIComponents_schemas_Interval_forms_item.h
  OAIComponents_schemas_Metadata_error.h
  OAIComponents_schemas_RecordCreateRequest_item.h
  OAIForm.h
  OAIFormList.h
  OAIInline_object.h
  OAIInline_object_1.h
  OAIInline_object_2.h
  OAIInline_object_3.h
  OAIInline_object_4.h
  OAIInline_object_5.h
  OAIInterval.h
  OAIIntervalList.h
  OAIJob.h
  OAIKeyword.h
  OAIMetadata.h
  OAIPagination.h
  OAIQuery.h
  OAIQueryComment.h
  OAIQueryList.h
  OAIRecord.h
  OAIRecordJobStatus.h
  OAIRecordList.h
  OAIRecordRevision.h
  OAIRecordRevisionList.h
  OAIRole.h
  OAISite.h
  OAISiteList.h
  OAISort.h
  OAIStudy.h
  OAIStudyList.h
  OAISubject.h
  OAISubjectList.h
  OAIUser.h
  OAIUserList.h
  OAIVariable.h
  OAIVariableList.h
  OAIVisit.h
  OAIVisitList.h
  OAIAdministrationApi.h
  OAICodingsApi.h
  OAIFormsApi.h
  OAIIntervalsApi.h
  OAIJobsApi.h
  OAIQueriesApi.h
  OAIRecordRevisionsApi.h
  OAIRecordsApi.h
  OAISitesApi.h
  OAIStudiesApi.h
  OAISubjectsApi.h
  OAIVariablesApi.h
  OAIVisitsApi.h
  OAIHelpers.h
  OAIHttpRequest.h
  OAIObject.h
  OAIEnum.h
  OAIHttpFileElement.h
  OAIServerConfiguration.h
  OAIServerVariable.h
  OAIOauth.h
  OAICoding.cpp
  OAICodingList.cpp
  OAIComponents_schemas_Interval_forms_item.cpp
  OAIComponents_schemas_Metadata_error.cpp
  OAIComponents_schemas_RecordCreateRequest_item.cpp
  OAIForm.cpp
  OAIFormList.cpp
  OAIInline_object.cpp
  OAIInline_object_1.cpp
  OAIInline_object_2.cpp
  OAIInline_object_3.cpp
  OAIInline_object_4.cpp
  OAIInline_object_5.cpp
  OAIInterval.cpp
  OAIIntervalList.cpp
  OAIJob.cpp
  OAIKeyword.cpp
  OAIMetadata.cpp
  OAIPagination.cpp
  OAIQuery.cpp
  OAIQueryComment.cpp
  OAIQueryList.cpp
  OAIRecord.cpp
  OAIRecordJobStatus.cpp
  OAIRecordList.cpp
  OAIRecordRevision.cpp
  OAIRecordRevisionList.cpp
  OAIRole.cpp
  OAISite.cpp
  OAISiteList.cpp
  OAISort.cpp
  OAIStudy.cpp
  OAIStudyList.cpp
  OAISubject.cpp
  OAISubjectList.cpp
  OAIUser.cpp
  OAIUserList.cpp
  OAIVariable.cpp
  OAIVariableList.cpp
  OAIVisit.cpp
  OAIVisitList.cpp
  OAIAdministrationApi.cpp
  OAICodingsApi.cpp
  OAIFormsApi.cpp
  OAIIntervalsApi.cpp
  OAIJobsApi.cpp
  OAIQueriesApi.cpp
  OAIRecordRevisionsApi.cpp
  OAIRecordsApi.cpp
  OAISitesApi.cpp
  OAIStudiesApi.cpp
  OAISubjectsApi.cpp
  OAIVariablesApi.cpp
  OAIVisitsApi.cpp
  OAIHelpers.cpp
  OAIHttpRequest.cpp
  OAIHttpFileElement.cpp
  OAIOauth.cpp
  )

target_include_directories(${PROJECT_NAME}
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

target_link_libraries(${PROJECT_NAME}
    PUBLIC
        Qt${QT_VERSION_MAJOR}::Core
        Qt${QT_VERSION_MAJOR}::Network
        Qt${QT_VERSION_MAJOR}::Gui

)

configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
    "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    INSTALL_DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}"
)

install(
    TARGETS ${PROJECT_NAME}
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
    INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}"
)

install(
    FILES ${HEADER_FILES}
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
)

install(
    FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)

install(
    EXPORT ${PROJECT_NAME}Targets
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)
