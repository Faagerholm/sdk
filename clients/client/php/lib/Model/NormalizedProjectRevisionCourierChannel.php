<?php
/**
 * NormalizedProjectRevisionCourierChannel
 *
 * PHP version 7.4
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
 * The version of the OpenAPI document: v1.13.4
 * Contact: support@ory.sh
 * Generated by: https://openapi-generator.tech
 * Generator version: 7.7.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace Ory\Client\Model;

use \ArrayAccess;
use \Ory\Client\ObjectSerializer;

/**
 * NormalizedProjectRevisionCourierChannel Class Doc Comment
 *
 * @category Class
 * @package  Ory\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class NormalizedProjectRevisionCourierChannel implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'NormalizedProjectRevisionCourierChannel';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'channelId' => 'string',
        'createdAt' => '\DateTime',
        'requestConfigAuthConfigApiKeyIn' => 'string',
        'requestConfigAuthConfigApiKeyName' => 'string',
        'requestConfigAuthConfigApiKeyValue' => 'string',
        'requestConfigAuthConfigBasicAuthPassword' => 'string',
        'requestConfigAuthConfigBasicAuthUser' => 'string',
        'requestConfigAuthType' => 'string',
        'requestConfigBody' => 'string',
        'requestConfigHeaders' => 'object',
        'requestConfigMethod' => 'string',
        'requestConfigUrl' => 'string',
        'updatedAt' => '\DateTime'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'channelId' => null,
        'createdAt' => 'date-time',
        'requestConfigAuthConfigApiKeyIn' => null,
        'requestConfigAuthConfigApiKeyName' => null,
        'requestConfigAuthConfigApiKeyValue' => null,
        'requestConfigAuthConfigBasicAuthPassword' => null,
        'requestConfigAuthConfigBasicAuthUser' => null,
        'requestConfigAuthType' => null,
        'requestConfigBody' => null,
        'requestConfigHeaders' => null,
        'requestConfigMethod' => null,
        'requestConfigUrl' => null,
        'updatedAt' => 'date-time'
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'channelId' => false,
        'createdAt' => false,
        'requestConfigAuthConfigApiKeyIn' => false,
        'requestConfigAuthConfigApiKeyName' => false,
        'requestConfigAuthConfigApiKeyValue' => false,
        'requestConfigAuthConfigBasicAuthPassword' => false,
        'requestConfigAuthConfigBasicAuthUser' => false,
        'requestConfigAuthType' => false,
        'requestConfigBody' => false,
        'requestConfigHeaders' => true,
        'requestConfigMethod' => false,
        'requestConfigUrl' => false,
        'updatedAt' => false
    ];

    /**
      * If a nullable field gets set to null, insert it here
      *
      * @var boolean[]
      */
    protected array $openAPINullablesSetToNull = [];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of nullable properties
     *
     * @return array
     */
    protected static function openAPINullables(): array
    {
        return self::$openAPINullables;
    }

    /**
     * Array of nullable field names deliberately set to null
     *
     * @return boolean[]
     */
    private function getOpenAPINullablesSetToNull(): array
    {
        return $this->openAPINullablesSetToNull;
    }

    /**
     * Setter - Array of nullable field names deliberately set to null
     *
     * @param boolean[] $openAPINullablesSetToNull
     */
    private function setOpenAPINullablesSetToNull(array $openAPINullablesSetToNull): void
    {
        $this->openAPINullablesSetToNull = $openAPINullablesSetToNull;
    }

    /**
     * Checks if a property is nullable
     *
     * @param string $property
     * @return bool
     */
    public static function isNullable(string $property): bool
    {
        return self::openAPINullables()[$property] ?? false;
    }

    /**
     * Checks if a nullable property is set to null.
     *
     * @param string $property
     * @return bool
     */
    public function isNullableSetToNull(string $property): bool
    {
        return in_array($property, $this->getOpenAPINullablesSetToNull(), true);
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'channelId' => 'channel_id',
        'createdAt' => 'created_at',
        'requestConfigAuthConfigApiKeyIn' => 'request_config_auth_config_api_key_in',
        'requestConfigAuthConfigApiKeyName' => 'request_config_auth_config_api_key_name',
        'requestConfigAuthConfigApiKeyValue' => 'request_config_auth_config_api_key_value',
        'requestConfigAuthConfigBasicAuthPassword' => 'request_config_auth_config_basic_auth_password',
        'requestConfigAuthConfigBasicAuthUser' => 'request_config_auth_config_basic_auth_user',
        'requestConfigAuthType' => 'request_config_auth_type',
        'requestConfigBody' => 'request_config_body',
        'requestConfigHeaders' => 'request_config_headers',
        'requestConfigMethod' => 'request_config_method',
        'requestConfigUrl' => 'request_config_url',
        'updatedAt' => 'updated_at'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'channelId' => 'setChannelId',
        'createdAt' => 'setCreatedAt',
        'requestConfigAuthConfigApiKeyIn' => 'setRequestConfigAuthConfigApiKeyIn',
        'requestConfigAuthConfigApiKeyName' => 'setRequestConfigAuthConfigApiKeyName',
        'requestConfigAuthConfigApiKeyValue' => 'setRequestConfigAuthConfigApiKeyValue',
        'requestConfigAuthConfigBasicAuthPassword' => 'setRequestConfigAuthConfigBasicAuthPassword',
        'requestConfigAuthConfigBasicAuthUser' => 'setRequestConfigAuthConfigBasicAuthUser',
        'requestConfigAuthType' => 'setRequestConfigAuthType',
        'requestConfigBody' => 'setRequestConfigBody',
        'requestConfigHeaders' => 'setRequestConfigHeaders',
        'requestConfigMethod' => 'setRequestConfigMethod',
        'requestConfigUrl' => 'setRequestConfigUrl',
        'updatedAt' => 'setUpdatedAt'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'channelId' => 'getChannelId',
        'createdAt' => 'getCreatedAt',
        'requestConfigAuthConfigApiKeyIn' => 'getRequestConfigAuthConfigApiKeyIn',
        'requestConfigAuthConfigApiKeyName' => 'getRequestConfigAuthConfigApiKeyName',
        'requestConfigAuthConfigApiKeyValue' => 'getRequestConfigAuthConfigApiKeyValue',
        'requestConfigAuthConfigBasicAuthPassword' => 'getRequestConfigAuthConfigBasicAuthPassword',
        'requestConfigAuthConfigBasicAuthUser' => 'getRequestConfigAuthConfigBasicAuthUser',
        'requestConfigAuthType' => 'getRequestConfigAuthType',
        'requestConfigBody' => 'getRequestConfigBody',
        'requestConfigHeaders' => 'getRequestConfigHeaders',
        'requestConfigMethod' => 'getRequestConfigMethod',
        'requestConfigUrl' => 'getRequestConfigUrl',
        'updatedAt' => 'getUpdatedAt'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }

    public const REQUEST_CONFIG_AUTH_TYPE_BASIC_AUTH = 'basic_auth';
    public const REQUEST_CONFIG_AUTH_TYPE_API_KEY = 'api_key';

    /**
     * Gets allowable values of the enum
     *
     * @return string[]
     */
    public function getRequestConfigAuthTypeAllowableValues()
    {
        return [
            self::REQUEST_CONFIG_AUTH_TYPE_BASIC_AUTH,
            self::REQUEST_CONFIG_AUTH_TYPE_API_KEY,
        ];
    }

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->setIfExists('channelId', $data ?? [], null);
        $this->setIfExists('createdAt', $data ?? [], null);
        $this->setIfExists('requestConfigAuthConfigApiKeyIn', $data ?? [], null);
        $this->setIfExists('requestConfigAuthConfigApiKeyName', $data ?? [], null);
        $this->setIfExists('requestConfigAuthConfigApiKeyValue', $data ?? [], null);
        $this->setIfExists('requestConfigAuthConfigBasicAuthPassword', $data ?? [], null);
        $this->setIfExists('requestConfigAuthConfigBasicAuthUser', $data ?? [], null);
        $this->setIfExists('requestConfigAuthType', $data ?? [], null);
        $this->setIfExists('requestConfigBody', $data ?? [], null);
        $this->setIfExists('requestConfigHeaders', $data ?? [], null);
        $this->setIfExists('requestConfigMethod', $data ?? [], null);
        $this->setIfExists('requestConfigUrl', $data ?? [], null);
        $this->setIfExists('updatedAt', $data ?? [], null);
    }

    /**
    * Sets $this->container[$variableName] to the given data or to the given default Value; if $variableName
    * is nullable and its value is set to null in the $fields array, then mark it as "set to null" in the
    * $this->openAPINullablesSetToNull array
    *
    * @param string $variableName
    * @param array  $fields
    * @param mixed  $defaultValue
    */
    private function setIfExists(string $variableName, array $fields, $defaultValue): void
    {
        if (self::isNullable($variableName) && array_key_exists($variableName, $fields) && is_null($fields[$variableName])) {
            $this->openAPINullablesSetToNull[] = $variableName;
        }

        $this->container[$variableName] = $fields[$variableName] ?? $defaultValue;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['channelId'] === null) {
            $invalidProperties[] = "'channelId' can't be null";
        }
        $allowedValues = $this->getRequestConfigAuthTypeAllowableValues();
        if (!is_null($this->container['requestConfigAuthType']) && !in_array($this->container['requestConfigAuthType'], $allowedValues, true)) {
            $invalidProperties[] = sprintf(
                "invalid value '%s' for 'requestConfigAuthType', must be one of '%s'",
                $this->container['requestConfigAuthType'],
                implode("', '", $allowedValues)
            );
        }

        if ($this->container['requestConfigBody'] === null) {
            $invalidProperties[] = "'requestConfigBody' can't be null";
        }
        if ($this->container['requestConfigMethod'] === null) {
            $invalidProperties[] = "'requestConfigMethod' can't be null";
        }
        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets channelId
     *
     * @return string
     */
    public function getChannelId()
    {
        return $this->container['channelId'];
    }

    /**
     * Sets channelId
     *
     * @param string $channelId The Channel's public ID
     *
     * @return self
     */
    public function setChannelId($channelId)
    {
        if (is_null($channelId)) {
            throw new \InvalidArgumentException('non-nullable channelId cannot be null');
        }
        $this->container['channelId'] = $channelId;

        return $this;
    }

    /**
     * Gets createdAt
     *
     * @return \DateTime|null
     */
    public function getCreatedAt()
    {
        return $this->container['createdAt'];
    }

    /**
     * Sets createdAt
     *
     * @param \DateTime|null $createdAt The creation date
     *
     * @return self
     */
    public function setCreatedAt($createdAt)
    {
        if (is_null($createdAt)) {
            throw new \InvalidArgumentException('non-nullable createdAt cannot be null');
        }
        $this->container['createdAt'] = $createdAt;

        return $this;
    }

    /**
     * Gets requestConfigAuthConfigApiKeyIn
     *
     * @return string|null
     */
    public function getRequestConfigAuthConfigApiKeyIn()
    {
        return $this->container['requestConfigAuthConfigApiKeyIn'];
    }

    /**
     * Sets requestConfigAuthConfigApiKeyIn
     *
     * @param string|null $requestConfigAuthConfigApiKeyIn API key location  Can either be \"header\" or \"query\"
     *
     * @return self
     */
    public function setRequestConfigAuthConfigApiKeyIn($requestConfigAuthConfigApiKeyIn)
    {
        if (is_null($requestConfigAuthConfigApiKeyIn)) {
            throw new \InvalidArgumentException('non-nullable requestConfigAuthConfigApiKeyIn cannot be null');
        }
        $this->container['requestConfigAuthConfigApiKeyIn'] = $requestConfigAuthConfigApiKeyIn;

        return $this;
    }

    /**
     * Gets requestConfigAuthConfigApiKeyName
     *
     * @return string|null
     */
    public function getRequestConfigAuthConfigApiKeyName()
    {
        return $this->container['requestConfigAuthConfigApiKeyName'];
    }

    /**
     * Sets requestConfigAuthConfigApiKeyName
     *
     * @param string|null $requestConfigAuthConfigApiKeyName API key name  Only used if the auth type is api_key
     *
     * @return self
     */
    public function setRequestConfigAuthConfigApiKeyName($requestConfigAuthConfigApiKeyName)
    {
        if (is_null($requestConfigAuthConfigApiKeyName)) {
            throw new \InvalidArgumentException('non-nullable requestConfigAuthConfigApiKeyName cannot be null');
        }
        $this->container['requestConfigAuthConfigApiKeyName'] = $requestConfigAuthConfigApiKeyName;

        return $this;
    }

    /**
     * Gets requestConfigAuthConfigApiKeyValue
     *
     * @return string|null
     */
    public function getRequestConfigAuthConfigApiKeyValue()
    {
        return $this->container['requestConfigAuthConfigApiKeyValue'];
    }

    /**
     * Sets requestConfigAuthConfigApiKeyValue
     *
     * @param string|null $requestConfigAuthConfigApiKeyValue API key value  Only used if the auth type is api_key
     *
     * @return self
     */
    public function setRequestConfigAuthConfigApiKeyValue($requestConfigAuthConfigApiKeyValue)
    {
        if (is_null($requestConfigAuthConfigApiKeyValue)) {
            throw new \InvalidArgumentException('non-nullable requestConfigAuthConfigApiKeyValue cannot be null');
        }
        $this->container['requestConfigAuthConfigApiKeyValue'] = $requestConfigAuthConfigApiKeyValue;

        return $this;
    }

    /**
     * Gets requestConfigAuthConfigBasicAuthPassword
     *
     * @return string|null
     */
    public function getRequestConfigAuthConfigBasicAuthPassword()
    {
        return $this->container['requestConfigAuthConfigBasicAuthPassword'];
    }

    /**
     * Sets requestConfigAuthConfigBasicAuthPassword
     *
     * @param string|null $requestConfigAuthConfigBasicAuthPassword Basic Auth Password  Only used if the auth type is basic_auth
     *
     * @return self
     */
    public function setRequestConfigAuthConfigBasicAuthPassword($requestConfigAuthConfigBasicAuthPassword)
    {
        if (is_null($requestConfigAuthConfigBasicAuthPassword)) {
            throw new \InvalidArgumentException('non-nullable requestConfigAuthConfigBasicAuthPassword cannot be null');
        }
        $this->container['requestConfigAuthConfigBasicAuthPassword'] = $requestConfigAuthConfigBasicAuthPassword;

        return $this;
    }

    /**
     * Gets requestConfigAuthConfigBasicAuthUser
     *
     * @return string|null
     */
    public function getRequestConfigAuthConfigBasicAuthUser()
    {
        return $this->container['requestConfigAuthConfigBasicAuthUser'];
    }

    /**
     * Sets requestConfigAuthConfigBasicAuthUser
     *
     * @param string|null $requestConfigAuthConfigBasicAuthUser Basic Auth Username  Only used if the auth type is basic_auth
     *
     * @return self
     */
    public function setRequestConfigAuthConfigBasicAuthUser($requestConfigAuthConfigBasicAuthUser)
    {
        if (is_null($requestConfigAuthConfigBasicAuthUser)) {
            throw new \InvalidArgumentException('non-nullable requestConfigAuthConfigBasicAuthUser cannot be null');
        }
        $this->container['requestConfigAuthConfigBasicAuthUser'] = $requestConfigAuthConfigBasicAuthUser;

        return $this;
    }

    /**
     * Gets requestConfigAuthType
     *
     * @return string|null
     */
    public function getRequestConfigAuthType()
    {
        return $this->container['requestConfigAuthType'];
    }

    /**
     * Sets requestConfigAuthType
     *
     * @param string|null $requestConfigAuthType HTTP Auth Method to use for the HTTP call  Can either be basic_auth or api_key basic_auth CourierChannelAuthTypeBasicAuth api_key CourierChannelAuthTypeApiKey
     *
     * @return self
     */
    public function setRequestConfigAuthType($requestConfigAuthType)
    {
        if (is_null($requestConfigAuthType)) {
            throw new \InvalidArgumentException('non-nullable requestConfigAuthType cannot be null');
        }
        $allowedValues = $this->getRequestConfigAuthTypeAllowableValues();
        if (!in_array($requestConfigAuthType, $allowedValues, true)) {
            throw new \InvalidArgumentException(
                sprintf(
                    "Invalid value '%s' for 'requestConfigAuthType', must be one of '%s'",
                    $requestConfigAuthType,
                    implode("', '", $allowedValues)
                )
            );
        }
        $this->container['requestConfigAuthType'] = $requestConfigAuthType;

        return $this;
    }

    /**
     * Gets requestConfigBody
     *
     * @return string
     */
    public function getRequestConfigBody()
    {
        return $this->container['requestConfigBody'];
    }

    /**
     * Sets requestConfigBody
     *
     * @param string $requestConfigBody URI pointing to the JsonNet template used for HTTP body payload generation.
     *
     * @return self
     */
    public function setRequestConfigBody($requestConfigBody)
    {
        if (is_null($requestConfigBody)) {
            throw new \InvalidArgumentException('non-nullable requestConfigBody cannot be null');
        }
        $this->container['requestConfigBody'] = $requestConfigBody;

        return $this;
    }

    /**
     * Gets requestConfigHeaders
     *
     * @return object|null
     */
    public function getRequestConfigHeaders()
    {
        return $this->container['requestConfigHeaders'];
    }

    /**
     * Sets requestConfigHeaders
     *
     * @param object|null $requestConfigHeaders NullJSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger and is NULLable-
     *
     * @return self
     */
    public function setRequestConfigHeaders($requestConfigHeaders)
    {
        if (is_null($requestConfigHeaders)) {
            array_push($this->openAPINullablesSetToNull, 'requestConfigHeaders');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('requestConfigHeaders', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['requestConfigHeaders'] = $requestConfigHeaders;

        return $this;
    }

    /**
     * Gets requestConfigMethod
     *
     * @return string
     */
    public function getRequestConfigMethod()
    {
        return $this->container['requestConfigMethod'];
    }

    /**
     * Sets requestConfigMethod
     *
     * @param string $requestConfigMethod The HTTP method to use (GET, POST, etc) for the HTTP call
     *
     * @return self
     */
    public function setRequestConfigMethod($requestConfigMethod)
    {
        if (is_null($requestConfigMethod)) {
            throw new \InvalidArgumentException('non-nullable requestConfigMethod cannot be null');
        }
        $this->container['requestConfigMethod'] = $requestConfigMethod;

        return $this;
    }

    /**
     * Gets requestConfigUrl
     *
     * @return string|null
     */
    public function getRequestConfigUrl()
    {
        return $this->container['requestConfigUrl'];
    }

    /**
     * Sets requestConfigUrl
     *
     * @param string|null $requestConfigUrl requestConfigUrl
     *
     * @return self
     */
    public function setRequestConfigUrl($requestConfigUrl)
    {
        if (is_null($requestConfigUrl)) {
            throw new \InvalidArgumentException('non-nullable requestConfigUrl cannot be null');
        }
        $this->container['requestConfigUrl'] = $requestConfigUrl;

        return $this;
    }

    /**
     * Gets updatedAt
     *
     * @return \DateTime|null
     */
    public function getUpdatedAt()
    {
        return $this->container['updatedAt'];
    }

    /**
     * Sets updatedAt
     *
     * @param \DateTime|null $updatedAt Last upate time
     *
     * @return self
     */
    public function setUpdatedAt($updatedAt)
    {
        if (is_null($updatedAt)) {
            throw new \InvalidArgumentException('non-nullable updatedAt cannot be null');
        }
        $this->container['updatedAt'] = $updatedAt;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    #[\ReturnTypeWillChange]
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value): void
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset): void
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    #[\ReturnTypeWillChange]
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


