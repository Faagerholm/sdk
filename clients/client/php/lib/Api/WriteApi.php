<?php
/**
 * WriteApi
 * PHP version 7.3
 *
 * @category Class
 * @package  Ory\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers.
 *
 * The version of the OpenAPI document: v0.2.0-alpha.26
 * Contact: support@ory.sh
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 5.4.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace Ory\Client\Api;

use GuzzleHttp\Client;
use GuzzleHttp\ClientInterface;
use GuzzleHttp\Exception\RequestException;
use GuzzleHttp\Exception\ConnectException;
use GuzzleHttp\Psr7\MultipartStream;
use GuzzleHttp\Psr7\Request;
use GuzzleHttp\RequestOptions;
use Ory\Client\ApiException;
use Ory\Client\Configuration;
use Ory\Client\HeaderSelector;
use Ory\Client\ObjectSerializer;

/**
 * WriteApi Class Doc Comment
 *
 * @category Class
 * @package  Ory\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class WriteApi
{
    /**
     * @var ClientInterface
     */
    protected $client;

    /**
     * @var Configuration
     */
    protected $config;

    /**
     * @var HeaderSelector
     */
    protected $headerSelector;

    /**
     * @var int Host index
     */
    protected $hostIndex;

    /**
     * @param ClientInterface $client
     * @param Configuration   $config
     * @param HeaderSelector  $selector
     * @param int             $hostIndex (Optional) host index to select the list of hosts if defined in the OpenAPI spec
     */
    public function __construct(
        ClientInterface $client = null,
        Configuration $config = null,
        HeaderSelector $selector = null,
        $hostIndex = 0
    ) {
        $this->client = $client ?: new Client();
        $this->config = $config ?: new Configuration();
        $this->headerSelector = $selector ?: new HeaderSelector();
        $this->hostIndex = $hostIndex;
    }

    /**
     * Set the host index
     *
     * @param int $hostIndex Host index (required)
     */
    public function setHostIndex($hostIndex): void
    {
        $this->hostIndex = $hostIndex;
    }

    /**
     * Get the host index
     *
     * @return int Host index
     */
    public function getHostIndex()
    {
        return $this->hostIndex;
    }

    /**
     * @return Configuration
     */
    public function getConfig()
    {
        return $this->config;
    }

    /**
     * Operation createRelationTuple
     *
     * # Create a Relation Tuple
     *
     * @param  \Ory\Client\Model\RelationQuery $relationQuery relationQuery (optional)
     *
     * @throws \Ory\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \Ory\Client\Model\RelationQuery|\Ory\Client\Model\GenericError|\Ory\Client\Model\GenericError
     */
    public function createRelationTuple($relationQuery = null)
    {
        list($response) = $this->createRelationTupleWithHttpInfo($relationQuery);
        return $response;
    }

    /**
     * Operation createRelationTupleWithHttpInfo
     *
     * # Create a Relation Tuple
     *
     * @param  \Ory\Client\Model\RelationQuery $relationQuery (optional)
     *
     * @throws \Ory\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \Ory\Client\Model\RelationQuery|\Ory\Client\Model\GenericError|\Ory\Client\Model\GenericError, HTTP status code, HTTP response headers (array of strings)
     */
    public function createRelationTupleWithHttpInfo($relationQuery = null)
    {
        $request = $this->createRelationTupleRequest($relationQuery);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 201:
                    if ('\Ory\Client\Model\RelationQuery' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\Ory\Client\Model\RelationQuery', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                case 400:
                    if ('\Ory\Client\Model\GenericError' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\Ory\Client\Model\GenericError', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                case 500:
                    if ('\Ory\Client\Model\GenericError' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\Ory\Client\Model\GenericError', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\Ory\Client\Model\RelationQuery';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 201:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\Ory\Client\Model\RelationQuery',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
                case 400:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\Ory\Client\Model\GenericError',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
                case 500:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\Ory\Client\Model\GenericError',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation createRelationTupleAsync
     *
     * # Create a Relation Tuple
     *
     * @param  \Ory\Client\Model\RelationQuery $relationQuery (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function createRelationTupleAsync($relationQuery = null)
    {
        return $this->createRelationTupleAsyncWithHttpInfo($relationQuery)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation createRelationTupleAsyncWithHttpInfo
     *
     * # Create a Relation Tuple
     *
     * @param  \Ory\Client\Model\RelationQuery $relationQuery (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function createRelationTupleAsyncWithHttpInfo($relationQuery = null)
    {
        $returnType = '\Ory\Client\Model\RelationQuery';
        $request = $this->createRelationTupleRequest($relationQuery);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'createRelationTuple'
     *
     * @param  \Ory\Client\Model\RelationQuery $relationQuery (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function createRelationTupleRequest($relationQuery = null)
    {

        $resourcePath = '/admin/relation-tuples';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;





        if ($multipart) {
            $headers = $this->headerSelector->selectHeadersForMultipart(
                ['application/json']
            );
        } else {
            $headers = $this->headerSelector->selectHeaders(
                ['application/json'],
                ['application/json']
            );
        }

        // for model (json/xml)
        if (isset($relationQuery)) {
            if ($headers['Content-Type'] === 'application/json') {
                $httpBody = \GuzzleHttp\json_encode(ObjectSerializer::sanitizeForSerialization($relationQuery));
            } else {
                $httpBody = $relationQuery;
            }
        } elseif (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif ($headers['Content-Type'] === 'application/json') {
                $httpBody = \GuzzleHttp\json_encode($formParams);

            } else {
                // for HTTP post (form)
                $httpBody = \GuzzleHttp\Psr7\Query::build($formParams);
            }
        }

        // this endpoint requires Bearer authentication (access token)
        if ($this->config->getAccessToken() !== null) {
            $headers['Authorization'] = 'Bearer ' . $this->config->getAccessToken();
        }

        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $query = \GuzzleHttp\Psr7\Query::build($queryParams);
        return new Request(
            'PUT',
            $this->config->getHost() . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation deleteRelationTuples
     *
     * # Delete Relation Tuples
     *
     * @param  string $namespace Namespace of the Relation Tuple (optional)
     * @param  string $object Object of the Relation Tuple (optional)
     * @param  string $relation Relation of the Relation Tuple (optional)
     * @param  string $subjectId SubjectID of the Relation Tuple (optional)
     * @param  string $subjectSetNamespace Namespace of the Subject Set (optional)
     * @param  string $subjectSetObject Object of the Subject Set (optional)
     * @param  string $subjectSetRelation Relation of the Subject Set (optional)
     *
     * @throws \Ory\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return void
     */
    public function deleteRelationTuples($namespace = null, $object = null, $relation = null, $subjectId = null, $subjectSetNamespace = null, $subjectSetObject = null, $subjectSetRelation = null)
    {
        $this->deleteRelationTuplesWithHttpInfo($namespace, $object, $relation, $subjectId, $subjectSetNamespace, $subjectSetObject, $subjectSetRelation);
    }

    /**
     * Operation deleteRelationTuplesWithHttpInfo
     *
     * # Delete Relation Tuples
     *
     * @param  string $namespace Namespace of the Relation Tuple (optional)
     * @param  string $object Object of the Relation Tuple (optional)
     * @param  string $relation Relation of the Relation Tuple (optional)
     * @param  string $subjectId SubjectID of the Relation Tuple (optional)
     * @param  string $subjectSetNamespace Namespace of the Subject Set (optional)
     * @param  string $subjectSetObject Object of the Subject Set (optional)
     * @param  string $subjectSetRelation Relation of the Subject Set (optional)
     *
     * @throws \Ory\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of null, HTTP status code, HTTP response headers (array of strings)
     */
    public function deleteRelationTuplesWithHttpInfo($namespace = null, $object = null, $relation = null, $subjectId = null, $subjectSetNamespace = null, $subjectSetObject = null, $subjectSetRelation = null)
    {
        $request = $this->deleteRelationTuplesRequest($namespace, $object, $relation, $subjectId, $subjectSetNamespace, $subjectSetObject, $subjectSetRelation);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            return [null, $statusCode, $response->getHeaders()];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 400:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\Ory\Client\Model\GenericError',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
                case 500:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\Ory\Client\Model\GenericError',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation deleteRelationTuplesAsync
     *
     * # Delete Relation Tuples
     *
     * @param  string $namespace Namespace of the Relation Tuple (optional)
     * @param  string $object Object of the Relation Tuple (optional)
     * @param  string $relation Relation of the Relation Tuple (optional)
     * @param  string $subjectId SubjectID of the Relation Tuple (optional)
     * @param  string $subjectSetNamespace Namespace of the Subject Set (optional)
     * @param  string $subjectSetObject Object of the Subject Set (optional)
     * @param  string $subjectSetRelation Relation of the Subject Set (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function deleteRelationTuplesAsync($namespace = null, $object = null, $relation = null, $subjectId = null, $subjectSetNamespace = null, $subjectSetObject = null, $subjectSetRelation = null)
    {
        return $this->deleteRelationTuplesAsyncWithHttpInfo($namespace, $object, $relation, $subjectId, $subjectSetNamespace, $subjectSetObject, $subjectSetRelation)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation deleteRelationTuplesAsyncWithHttpInfo
     *
     * # Delete Relation Tuples
     *
     * @param  string $namespace Namespace of the Relation Tuple (optional)
     * @param  string $object Object of the Relation Tuple (optional)
     * @param  string $relation Relation of the Relation Tuple (optional)
     * @param  string $subjectId SubjectID of the Relation Tuple (optional)
     * @param  string $subjectSetNamespace Namespace of the Subject Set (optional)
     * @param  string $subjectSetObject Object of the Subject Set (optional)
     * @param  string $subjectSetRelation Relation of the Subject Set (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function deleteRelationTuplesAsyncWithHttpInfo($namespace = null, $object = null, $relation = null, $subjectId = null, $subjectSetNamespace = null, $subjectSetObject = null, $subjectSetRelation = null)
    {
        $returnType = '';
        $request = $this->deleteRelationTuplesRequest($namespace, $object, $relation, $subjectId, $subjectSetNamespace, $subjectSetObject, $subjectSetRelation);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    return [null, $response->getStatusCode(), $response->getHeaders()];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'deleteRelationTuples'
     *
     * @param  string $namespace Namespace of the Relation Tuple (optional)
     * @param  string $object Object of the Relation Tuple (optional)
     * @param  string $relation Relation of the Relation Tuple (optional)
     * @param  string $subjectId SubjectID of the Relation Tuple (optional)
     * @param  string $subjectSetNamespace Namespace of the Subject Set (optional)
     * @param  string $subjectSetObject Object of the Subject Set (optional)
     * @param  string $subjectSetRelation Relation of the Subject Set (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function deleteRelationTuplesRequest($namespace = null, $object = null, $relation = null, $subjectId = null, $subjectSetNamespace = null, $subjectSetObject = null, $subjectSetRelation = null)
    {

        $resourcePath = '/admin/relation-tuples';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;

        // query params
        if ($namespace !== null) {
            if('form' === 'form' && is_array($namespace)) {
                foreach($namespace as $key => $value) {
                    $queryParams[$key] = $value;
                }
            }
            else {
                $queryParams['namespace'] = $namespace;
            }
        }
        // query params
        if ($object !== null) {
            if('form' === 'form' && is_array($object)) {
                foreach($object as $key => $value) {
                    $queryParams[$key] = $value;
                }
            }
            else {
                $queryParams['object'] = $object;
            }
        }
        // query params
        if ($relation !== null) {
            if('form' === 'form' && is_array($relation)) {
                foreach($relation as $key => $value) {
                    $queryParams[$key] = $value;
                }
            }
            else {
                $queryParams['relation'] = $relation;
            }
        }
        // query params
        if ($subjectId !== null) {
            if('form' === 'form' && is_array($subjectId)) {
                foreach($subjectId as $key => $value) {
                    $queryParams[$key] = $value;
                }
            }
            else {
                $queryParams['subject_id'] = $subjectId;
            }
        }
        // query params
        if ($subjectSetNamespace !== null) {
            if('form' === 'form' && is_array($subjectSetNamespace)) {
                foreach($subjectSetNamespace as $key => $value) {
                    $queryParams[$key] = $value;
                }
            }
            else {
                $queryParams['subject_set.namespace'] = $subjectSetNamespace;
            }
        }
        // query params
        if ($subjectSetObject !== null) {
            if('form' === 'form' && is_array($subjectSetObject)) {
                foreach($subjectSetObject as $key => $value) {
                    $queryParams[$key] = $value;
                }
            }
            else {
                $queryParams['subject_set.object'] = $subjectSetObject;
            }
        }
        // query params
        if ($subjectSetRelation !== null) {
            if('form' === 'form' && is_array($subjectSetRelation)) {
                foreach($subjectSetRelation as $key => $value) {
                    $queryParams[$key] = $value;
                }
            }
            else {
                $queryParams['subject_set.relation'] = $subjectSetRelation;
            }
        }




        if ($multipart) {
            $headers = $this->headerSelector->selectHeadersForMultipart(
                ['application/json']
            );
        } else {
            $headers = $this->headerSelector->selectHeaders(
                ['application/json'],
                []
            );
        }

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif ($headers['Content-Type'] === 'application/json') {
                $httpBody = \GuzzleHttp\json_encode($formParams);

            } else {
                // for HTTP post (form)
                $httpBody = \GuzzleHttp\Psr7\Query::build($formParams);
            }
        }

        // this endpoint requires Bearer authentication (access token)
        if ($this->config->getAccessToken() !== null) {
            $headers['Authorization'] = 'Bearer ' . $this->config->getAccessToken();
        }

        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $query = \GuzzleHttp\Psr7\Query::build($queryParams);
        return new Request(
            'DELETE',
            $this->config->getHost() . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation patchRelationTuples
     *
     * # Patch Multiple Relation Tuples
     *
     * @param  \Ory\Client\Model\PatchDelta[] $patchDelta patchDelta (optional)
     *
     * @throws \Ory\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return void
     */
    public function patchRelationTuples($patchDelta = null)
    {
        $this->patchRelationTuplesWithHttpInfo($patchDelta);
    }

    /**
     * Operation patchRelationTuplesWithHttpInfo
     *
     * # Patch Multiple Relation Tuples
     *
     * @param  \Ory\Client\Model\PatchDelta[] $patchDelta (optional)
     *
     * @throws \Ory\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of null, HTTP status code, HTTP response headers (array of strings)
     */
    public function patchRelationTuplesWithHttpInfo($patchDelta = null)
    {
        $request = $this->patchRelationTuplesRequest($patchDelta);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            return [null, $statusCode, $response->getHeaders()];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 400:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\Ory\Client\Model\GenericError',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
                case 404:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\Ory\Client\Model\GenericError',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
                case 500:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\Ory\Client\Model\GenericError',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation patchRelationTuplesAsync
     *
     * # Patch Multiple Relation Tuples
     *
     * @param  \Ory\Client\Model\PatchDelta[] $patchDelta (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function patchRelationTuplesAsync($patchDelta = null)
    {
        return $this->patchRelationTuplesAsyncWithHttpInfo($patchDelta)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation patchRelationTuplesAsyncWithHttpInfo
     *
     * # Patch Multiple Relation Tuples
     *
     * @param  \Ory\Client\Model\PatchDelta[] $patchDelta (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function patchRelationTuplesAsyncWithHttpInfo($patchDelta = null)
    {
        $returnType = '';
        $request = $this->patchRelationTuplesRequest($patchDelta);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    return [null, $response->getStatusCode(), $response->getHeaders()];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'patchRelationTuples'
     *
     * @param  \Ory\Client\Model\PatchDelta[] $patchDelta (optional)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function patchRelationTuplesRequest($patchDelta = null)
    {

        $resourcePath = '/admin/relation-tuples';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;





        if ($multipart) {
            $headers = $this->headerSelector->selectHeadersForMultipart(
                ['application/json']
            );
        } else {
            $headers = $this->headerSelector->selectHeaders(
                ['application/json'],
                ['application/json']
            );
        }

        // for model (json/xml)
        if (isset($patchDelta)) {
            if ($headers['Content-Type'] === 'application/json') {
                $httpBody = \GuzzleHttp\json_encode(ObjectSerializer::sanitizeForSerialization($patchDelta));
            } else {
                $httpBody = $patchDelta;
            }
        } elseif (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif ($headers['Content-Type'] === 'application/json') {
                $httpBody = \GuzzleHttp\json_encode($formParams);

            } else {
                // for HTTP post (form)
                $httpBody = \GuzzleHttp\Psr7\Query::build($formParams);
            }
        }

        // this endpoint requires Bearer authentication (access token)
        if ($this->config->getAccessToken() !== null) {
            $headers['Authorization'] = 'Bearer ' . $this->config->getAccessToken();
        }

        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $query = \GuzzleHttp\Psr7\Query::build($queryParams);
        return new Request(
            'PATCH',
            $this->config->getHost() . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Create http client option
     *
     * @throws \RuntimeException on file opening failure
     * @return array of http client options
     */
    protected function createHttpClientOption()
    {
        $options = [];
        if ($this->config->getDebug()) {
            $options[RequestOptions::DEBUG] = fopen($this->config->getDebugFile(), 'a');
            if (!$options[RequestOptions::DEBUG]) {
                throw new \RuntimeException('Failed to open the debug file: ' . $this->config->getDebugFile());
            }
        }

        return $options;
    }
}
