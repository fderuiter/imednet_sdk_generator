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

import org.openapitools.client.api.InlineObject
import org.openapitools.client.api.InlineObject1
import org.openapitools.client.api.InlineObject2
import org.openapitools.client.api.InlineObject3
import org.openapitools.client.api.InlineObject5
import org.openapitools.client.api.VariableList

object VariablesApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def listVariables(host: String, studyKey: String, page: Integer = 0, size: Integer = 25, sort: String, filter: String)(implicit pageQuery: QueryParam[Integer], sizeQuery: QueryParam[Integer], sortQuery: QueryParam[String], filterQuery: QueryParam[String]): Task[VariableList] = {
    implicit val returnTypeDecoder: EntityDecoder[VariableList] = jsonOf[VariableList]

    val path = "/studies/{studyKey}/variables".replaceAll("\\{" + "studyKey" + "\\}",escape(studyKey.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("page", Some(pageQuery.toParamString(page))), ("size", Some(sizeQuery.toParamString(size))), ("sort", Some(sortQuery.toParamString(sort))), ("filter", Some(filterQuery.toParamString(filter))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[VariableList](req)

    } yield resp
  }

}

class HttpServiceVariablesApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def listVariables(studyKey: String, page: Integer = 0, size: Integer = 25, sort: String, filter: String)(implicit pageQuery: QueryParam[Integer], sizeQuery: QueryParam[Integer], sortQuery: QueryParam[String], filterQuery: QueryParam[String]): Task[VariableList] = {
    implicit val returnTypeDecoder: EntityDecoder[VariableList] = jsonOf[VariableList]

    val path = "/studies/{studyKey}/variables".replaceAll("\\{" + "studyKey" + "\\}",escape(studyKey.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("page", Some(pageQuery.toParamString(page))), ("size", Some(sizeQuery.toParamString(size))), ("sort", Some(sortQuery.toParamString(sort))), ("filter", Some(filterQuery.toParamString(filter))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[VariableList](req)

    } yield resp
  }

}
