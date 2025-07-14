
package org.openapitools.client.model


case class RecordJobStatus (
    /* Unique job identifier */
    _jobId: Option[String],
    /* Batch ID used to track the job (identical to jobId in most cases) */
    _batchId: Option[String],
    /* Current state of the job (e.g., created, completed) */
    _state: Option[String]
)
object RecordJobStatus {
    def toStringBody(var_jobId: Object, var_batchId: Object, var_state: Object) =
        s"""
        | {
        | "jobId":$var_jobId,"batchId":$var_batchId,"state":$var_state
        | }
        """.stripMargin
}
