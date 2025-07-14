
package org.openapitools.client.model


case class Job (
    /* Unique job identifier */
    _jobId: Option[String],
    /* Batch ID associated with the job (useful for linking with record creation requests) */
    _batchId: Option[String],
    /* State of the job (e.g., completed, pending) */
    _state: Option[String],
    /* Timestamp when the job was created */
    _dateCreated: Option[String],
    /* Timestamp when the job started processing */
    _dateStarted: Option[String],
    /* Timestamp when the job finished processing */
    _dateFinished: Option[String]
)
object Job {
    def toStringBody(var_jobId: Object, var_batchId: Object, var_state: Object, var_dateCreated: Object, var_dateStarted: Object, var_dateFinished: Object) =
        s"""
        | {
        | "jobId":$var_jobId,"batchId":$var_batchId,"state":$var_state,"dateCreated":$var_dateCreated,"dateStarted":$var_dateStarted,"dateFinished":$var_dateFinished
        | }
        """.stripMargin
}
