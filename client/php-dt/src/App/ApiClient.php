<?php
declare(strict_types=1);

namespace App;

use Articus\DataTransfer as DT;
use OpenAPIGenerator\APIClient as OAGAC;
use Psr\Http\Client\ClientExceptionInterface;
use Psr\Http\Message\ResponseInterface;

/**
 * Mednet EDC API
 * The Mednet EDC (Electronic Data Capture) REST API provides a single-point of access for reading data stored across iMednet data services. This specification documents all available endpoints in the latest version of the API.
 * The version of the OpenAPI document: 1.3.6
 */
class ApiClient extends OAGAC\AbstractApiClient
{
    //region createRecords
    /**
     * Add new record or update subject/record data
     * @param \App\DTO\CreateRecordsParameterData $parameters
     * @param \App\DTO\Collection23 $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function createRecordsRaw(
        \App\DTO\CreateRecordsParameterData $parameters,
        \App\DTO\Collection23 $requestContent,
        iterable $security = ['apiKeyAuth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/studies/{studyKey}/records', $this->getPathParameters($parameters), []);
        $request = $this->addBody($request, $requestMediaType, $requestContent);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * Add new record or update subject/record data
     * @param \App\DTO\CreateRecordsParameterData $parameters
     * @param \App\DTO\Collection23 $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function createRecords(
        \App\DTO\CreateRecordsParameterData $parameters,
        \App\DTO\Collection23 $requestContent,
        iterable $security = ['apiKeyAuth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->createRecordsRaw($parameters, $requestContent, $security, $requestMediaType, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 202:
                /* Accepted request for record creation. Returns a job identifier to check status. */
                $responseContent = new \App\DTO\RecordJobStatus();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 429:
                /* Too many requests (rate limit exceeded) */
                $responseContent = new \App\DTO\InlineObject4();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * Add new record or update subject/record data
     * @param \App\DTO\CreateRecordsParameterData $parameters
     * @param \App\DTO\Collection23 $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return \App\DTO\RecordJobStatus
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function createRecordsResult(
        \App\DTO\CreateRecordsParameterData $parameters,
        \App\DTO\Collection23 $requestContent,
        iterable $security = ['apiKeyAuth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = 'application/json'
    ): \App\DTO\RecordJobStatus
    {
        return $this->getSuccessfulContent(...$this->createRecords($parameters, $requestContent, $security, $requestMediaType, $responseMediaType));
    }
    //endregion

    //region getJobStatus
    /**
     * Retrieve job status by batch ID
     * @param \App\DTO\GetJobStatusParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getJobStatusRaw(
        \App\DTO\GetJobStatusParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/jobs/{batchId}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * Retrieve job status by batch ID
     * @param \App\DTO\GetJobStatusParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getJobStatus(
        \App\DTO\GetJobStatusParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getJobStatusRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with job status information */
                $responseContent = new \App\DTO\Job();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * Retrieve job status by batch ID
     * @param \App\DTO\GetJobStatusParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Job
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getJobStatusResult(
        \App\DTO\GetJobStatusParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Job
    {
        return $this->getSuccessfulContent(...$this->getJobStatus($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listCodings
    /**
     * List coding activities in a study
     * @param \App\DTO\ListCodingsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listCodingsRaw(
        \App\DTO\ListCodingsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/codings', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List coding activities in a study
     * @param \App\DTO\ListCodingsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listCodings(
        \App\DTO\ListCodingsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listCodingsRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of coding entries */
                $responseContent = new \App\DTO\CodingList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List coding activities in a study
     * @param \App\DTO\ListCodingsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\CodingList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listCodingsResult(
        \App\DTO\ListCodingsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\CodingList
    {
        return $this->getSuccessfulContent(...$this->listCodings($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listForms
    /**
     * List forms in a study
     * @param \App\DTO\ListFormsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listFormsRaw(
        \App\DTO\ListFormsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/forms', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List forms in a study
     * @param \App\DTO\ListFormsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listForms(
        \App\DTO\ListFormsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listFormsRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of forms */
                $responseContent = new \App\DTO\FormList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List forms in a study
     * @param \App\DTO\ListFormsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\FormList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listFormsResult(
        \App\DTO\ListFormsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\FormList
    {
        return $this->getSuccessfulContent(...$this->listForms($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listIntervals
    /**
     * List intervals (visit definitions) in a study
     * @param \App\DTO\ListIntervalsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listIntervalsRaw(
        \App\DTO\ListIntervalsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/intervals', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List intervals (visit definitions) in a study
     * @param \App\DTO\ListIntervalsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listIntervals(
        \App\DTO\ListIntervalsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listIntervalsRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of intervals */
                $responseContent = new \App\DTO\IntervalList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List intervals (visit definitions) in a study
     * @param \App\DTO\ListIntervalsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\IntervalList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listIntervalsResult(
        \App\DTO\ListIntervalsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\IntervalList
    {
        return $this->getSuccessfulContent(...$this->listIntervals($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listQueries
    /**
     * List data queries in a study
     * @param \App\DTO\ListQueriesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listQueriesRaw(
        \App\DTO\ListQueriesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/queries', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List data queries in a study
     * @param \App\DTO\ListQueriesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listQueries(
        \App\DTO\ListQueriesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listQueriesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of queries */
                $responseContent = new \App\DTO\QueryList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List data queries in a study
     * @param \App\DTO\ListQueriesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\QueryList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listQueriesResult(
        \App\DTO\ListQueriesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\QueryList
    {
        return $this->getSuccessfulContent(...$this->listQueries($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listRecordRevisions
    /**
     * List record revisions (audit trail entries) in a study
     * @param \App\DTO\ListRecordRevisionsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listRecordRevisionsRaw(
        \App\DTO\ListRecordRevisionsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/recordRevisions', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List record revisions (audit trail entries) in a study
     * @param \App\DTO\ListRecordRevisionsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listRecordRevisions(
        \App\DTO\ListRecordRevisionsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listRecordRevisionsRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of record revisions */
                $responseContent = new \App\DTO\RecordRevisionList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List record revisions (audit trail entries) in a study
     * @param \App\DTO\ListRecordRevisionsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\RecordRevisionList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listRecordRevisionsResult(
        \App\DTO\ListRecordRevisionsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\RecordRevisionList
    {
        return $this->getSuccessfulContent(...$this->listRecordRevisions($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listRecords
    /**
     * List records (eCRF instances) in a study
     * @param \App\DTO\ListRecordsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listRecordsRaw(
        \App\DTO\ListRecordsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/records', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List records (eCRF instances) in a study
     * @param \App\DTO\ListRecordsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listRecords(
        \App\DTO\ListRecordsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listRecordsRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of records */
                $responseContent = new \App\DTO\RecordList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List records (eCRF instances) in a study
     * @param \App\DTO\ListRecordsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\RecordList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listRecordsResult(
        \App\DTO\ListRecordsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\RecordList
    {
        return $this->getSuccessfulContent(...$this->listRecords($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listSites
    /**
     * List sites for a study
     * @param \App\DTO\ListSitesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listSitesRaw(
        \App\DTO\ListSitesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/sites', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List sites for a study
     * @param \App\DTO\ListSitesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listSites(
        \App\DTO\ListSitesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listSitesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of sites */
                $responseContent = new \App\DTO\SiteList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List sites for a study
     * @param \App\DTO\ListSitesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\SiteList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listSitesResult(
        \App\DTO\ListSitesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\SiteList
    {
        return $this->getSuccessfulContent(...$this->listSites($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listStudies
    /**
     * List studies accessible by API key
     * @param \App\DTO\ListStudiesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listStudiesRaw(
        \App\DTO\ListStudiesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List studies accessible by API key
     * @param \App\DTO\ListStudiesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listStudies(
        \App\DTO\ListStudiesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listStudiesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of studies */
                $responseContent = new \App\DTO\StudyList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List studies accessible by API key
     * @param \App\DTO\ListStudiesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\StudyList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listStudiesResult(
        \App\DTO\ListStudiesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\StudyList
    {
        return $this->getSuccessfulContent(...$this->listStudies($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listSubjects
    /**
     * List subjects in a study
     * @param \App\DTO\ListSubjectsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listSubjectsRaw(
        \App\DTO\ListSubjectsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/subjects', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List subjects in a study
     * @param \App\DTO\ListSubjectsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listSubjects(
        \App\DTO\ListSubjectsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listSubjectsRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of subjects */
                $responseContent = new \App\DTO\SubjectList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List subjects in a study
     * @param \App\DTO\ListSubjectsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\SubjectList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listSubjectsResult(
        \App\DTO\ListSubjectsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\SubjectList
    {
        return $this->getSuccessfulContent(...$this->listSubjects($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listUsers
    /**
     * List users and their roles in a study
     * @param \App\DTO\ListUsersParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listUsersRaw(
        \App\DTO\ListUsersParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/users', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List users and their roles in a study
     * @param \App\DTO\ListUsersParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listUsers(
        \App\DTO\ListUsersParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listUsersRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of users */
                $responseContent = new \App\DTO\UserList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List users and their roles in a study
     * @param \App\DTO\ListUsersParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\UserList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listUsersResult(
        \App\DTO\ListUsersParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\UserList
    {
        return $this->getSuccessfulContent(...$this->listUsers($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listVariables
    /**
     * List variables (fields) in a study
     * @param \App\DTO\ListVariablesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listVariablesRaw(
        \App\DTO\ListVariablesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/variables', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List variables (fields) in a study
     * @param \App\DTO\ListVariablesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listVariables(
        \App\DTO\ListVariablesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listVariablesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of variables */
                $responseContent = new \App\DTO\VariableList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List variables (fields) in a study
     * @param \App\DTO\ListVariablesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\VariableList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listVariablesResult(
        \App\DTO\ListVariablesParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\VariableList
    {
        return $this->getSuccessfulContent(...$this->listVariables($parameters, $security, $responseMediaType));
    }
    //endregion

    //region listVisits
    /**
     * List visits (subject visit instances) in a study
     * @param \App\DTO\ListVisitsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function listVisitsRaw(
        \App\DTO\ListVisitsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/studies/{studyKey}/visits', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * List visits (subject visit instances) in a study
     * @param \App\DTO\ListVisitsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function listVisits(
        \App\DTO\ListVisitsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->listVisitsRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successful response with list of visits */
                $responseContent = new \App\DTO\VisitList();
                break;
            case 400:
                /* Bad request (malformed or invalid input) */
                $responseContent = new \App\DTO\InlineObject();
                break;
            case 401:
                /* Authentication failed or was not provided */
                $responseContent = new \App\DTO\InlineObject1();
                break;
            case 403:
                /* Authenticated but not allowed to access the resource */
                $responseContent = new \App\DTO\InlineObject2();
                break;
            case 404:
                /* The requested resource was not found */
                $responseContent = new \App\DTO\InlineObject3();
                break;
            case 500:
                /* Internal server error (unexpected condition encountered) */
                $responseContent = new \App\DTO\InlineObject5();
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * List visits (subject visit instances) in a study
     * @param \App\DTO\ListVisitsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\VisitList
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function listVisitsResult(
        \App\DTO\ListVisitsParameterData $parameters,
        iterable $security = ['apiKeyAuth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\VisitList
    {
        return $this->getSuccessfulContent(...$this->listVisits($parameters, $security, $responseMediaType));
    }
    //endregion
}

