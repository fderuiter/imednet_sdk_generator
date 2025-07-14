package org.openapitools.api;

import org.openapitools.model.InlineObject;
import org.openapitools.model.InlineObject1;
import org.openapitools.model.InlineObject2;
import org.openapitools.model.InlineObject3;
import org.openapitools.model.InlineObject5;
import org.openapitools.model.Job;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;
import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.ApiResponse;
import io.swagger.jaxrs.PATCH;

/**
 * Mednet EDC API
 *
 * <p>The Mednet EDC (Electronic Data Capture) REST API provides a single-point of access for reading data stored across iMednet data services. This specification documents all available endpoints in the latest version of the API. 
 *
 */
@Path("/studies/{studyKey}/jobs/{batchId}")
@Api(value = "/", description = "")
public interface JobsApi  {

    /**
     * Retrieve job status by batch ID
     *
     */
    @GET
    
    @Produces({ "application/json" })
    @ApiOperation(value = "Retrieve job status by batch ID", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successful response with job status information", response = Job.class),
        @ApiResponse(code = 400, message = "Bad request (malformed or invalid input)", response = InlineObject.class),
        @ApiResponse(code = 401, message = "Authentication failed or was not provided", response = InlineObject1.class),
        @ApiResponse(code = 403, message = "Authenticated but not allowed to access the resource", response = InlineObject2.class),
        @ApiResponse(code = 404, message = "The requested resource was not found", response = InlineObject3.class),
        @ApiResponse(code = 500, message = "Internal server error (unexpected condition encountered)", response = InlineObject5.class) })
    public Job getJobStatus(@PathParam("studyKey") String studyKey, @PathParam("batchId") String batchId);
}
