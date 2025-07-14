package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import java.io.File
import java.net.URLEncoder
import java.util.UUID

import org.http4s._
import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.http4s.client._
import org.http4s.client.blaze.PooledHttp1Client
import org.http4s.headers._

import org.joda.time.DateTime

import scalaz.concurrent.Task

import HelperCodecs._

import org.openapitools.client.api.ComponentsSchemasRecordCreateRequestItem
import org.openapitools.client.api.InlineObject
import org.openapitools.client.api.InlineObject1
import org.openapitools.client.api.InlineObject2
import org.openapitools.client.api.InlineObject3
import org.openapitools.client.api.InlineObject4
import org.openapitools.client.api.InlineObject5
import org.openapitools.client.api.RecordJobStatus
import org.openapitools.client.api.RecordList

object RecordsApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRecords(host: String, studyKey: String, componentsSchemasRecordCreateRequestItem: List[ComponentsSchemasRecordCreateRequestItem]): Task[RecordJobStatus] = {
    implicit val returnTypeDecoder: EntityDecoder[RecordJobStatus] = jsonOf[RecordJobStatus]

    val path = "/studies/{studyKey}/records".replaceAll("\\{" + "studyKey" + "\\}",escape(studyKey.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(componentsSchemasRecordCreateRequestItem)
      resp          <- client.expect[RecordJobStatus](req)

    } yield resp
  }

  def listRecords(host: String, studyKey: String, page: Integer = 0, size: Integer = 25, sort: String, filter: String, recordDataFilter: String)(implicit pageQuery: QueryParam[Integer], sizeQuery: QueryParam[Integer], sortQuery: QueryParam[String], filterQuery: QueryParam[String], recordDataFilterQuery: QueryParam[String]): Task[RecordList] = {
    implicit val returnTypeDecoder: EntityDecoder[RecordList] = jsonOf[RecordList]

    val path = "/studies/{studyKey}/records".replaceAll("\\{" + "studyKey" + "\\}",escape(studyKey.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("page", Some(pageQuery.toParamString(page))), ("size", Some(sizeQuery.toParamString(size))), ("sort", Some(sortQuery.toParamString(sort))), ("filter", Some(filterQuery.toParamString(filter))), ("recordDataFilter", Some(recordDataFilterQuery.toParamString(recordDataFilter))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RecordList](req)

    } yield resp
  }

}

class HttpServiceRecordsApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def createRecords(studyKey: String, componentsSchemasRecordCreateRequestItem: List[ComponentsSchemasRecordCreateRequestItem]): Task[RecordJobStatus] = {
    implicit val returnTypeDecoder: EntityDecoder[RecordJobStatus] = jsonOf[RecordJobStatus]

    val path = "/studies/{studyKey}/records".replaceAll("\\{" + "studyKey" + "\\}",escape(studyKey.toString))

    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(componentsSchemasRecordCreateRequestItem)
      resp          <- client.expect[RecordJobStatus](req)

    } yield resp
  }

  def listRecords(studyKey: String, page: Integer = 0, size: Integer = 25, sort: String, filter: String, recordDataFilter: String)(implicit pageQuery: QueryParam[Integer], sizeQuery: QueryParam[Integer], sortQuery: QueryParam[String], filterQuery: QueryParam[String], recordDataFilterQuery: QueryParam[String]): Task[RecordList] = {
    implicit val returnTypeDecoder: EntityDecoder[RecordList] = jsonOf[RecordList]

    val path = "/studies/{studyKey}/records".replaceAll("\\{" + "studyKey" + "\\}",escape(studyKey.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("page", Some(pageQuery.toParamString(page))), ("size", Some(sizeQuery.toParamString(size))), ("sort", Some(sortQuery.toParamString(sort))), ("filter", Some(filterQuery.toParamString(filter))), ("recordDataFilter", Some(recordDataFilterQuery.toParamString(recordDataFilter))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[RecordList](req)

    } yield resp
  }

}
