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
import org.openapitools.client.api.Job

object JobsApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getJobStatus(host: String, studyKey: String, batchId: String): Task[Job] = {
    implicit val returnTypeDecoder: EntityDecoder[Job] = jsonOf[Job]

    val path = "/studies/{studyKey}/jobs/{batchId}".replaceAll("\\{" + "studyKey" + "\\}",escape(studyKey.toString)).replaceAll("\\{" + "batchId" + "\\}",escape(batchId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Job](req)

    } yield resp
  }

}

class HttpServiceJobsApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def getJobStatus(studyKey: String, batchId: String): Task[Job] = {
    implicit val returnTypeDecoder: EntityDecoder[Job] = jsonOf[Job]

    val path = "/studies/{studyKey}/jobs/{batchId}".replaceAll("\\{" + "studyKey" + "\\}",escape(studyKey.toString)).replaceAll("\\{" + "batchId" + "\\}",escape(batchId.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[Job](req)

    } yield resp
  }

}
