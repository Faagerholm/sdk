/*
 * Ory APIs
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.13.3
 * Contact: support@ory.sh
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package sh.ory.model;

import java.util.Objects;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.time.OffsetDateTime;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import sh.ory.JSON;

/**
 * NormalizedProjectRevisionCourierChannel
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-07-08T09:17:46.310015611Z[Etc/UTC]", comments = "Generator version: 7.7.0")
public class NormalizedProjectRevisionCourierChannel {
  public static final String SERIALIZED_NAME_CHANNEL_ID = "channel_id";
  @SerializedName(SERIALIZED_NAME_CHANNEL_ID)
  private String channelId;

  public static final String SERIALIZED_NAME_CREATED_AT = "created_at";
  @SerializedName(SERIALIZED_NAME_CREATED_AT)
  private OffsetDateTime createdAt;

  public static final String SERIALIZED_NAME_REQUEST_CONFIG_AUTH_CONFIG_API_KEY_IN = "request_config_auth_config_api_key_in";
  @SerializedName(SERIALIZED_NAME_REQUEST_CONFIG_AUTH_CONFIG_API_KEY_IN)
  private String requestConfigAuthConfigApiKeyIn;

  public static final String SERIALIZED_NAME_REQUEST_CONFIG_AUTH_CONFIG_API_KEY_NAME = "request_config_auth_config_api_key_name";
  @SerializedName(SERIALIZED_NAME_REQUEST_CONFIG_AUTH_CONFIG_API_KEY_NAME)
  private String requestConfigAuthConfigApiKeyName;

  public static final String SERIALIZED_NAME_REQUEST_CONFIG_AUTH_CONFIG_API_KEY_VALUE = "request_config_auth_config_api_key_value";
  @SerializedName(SERIALIZED_NAME_REQUEST_CONFIG_AUTH_CONFIG_API_KEY_VALUE)
  private String requestConfigAuthConfigApiKeyValue;

  public static final String SERIALIZED_NAME_REQUEST_CONFIG_AUTH_CONFIG_BASIC_AUTH_PASSWORD = "request_config_auth_config_basic_auth_password";
  @SerializedName(SERIALIZED_NAME_REQUEST_CONFIG_AUTH_CONFIG_BASIC_AUTH_PASSWORD)
  private String requestConfigAuthConfigBasicAuthPassword;

  public static final String SERIALIZED_NAME_REQUEST_CONFIG_AUTH_CONFIG_BASIC_AUTH_USER = "request_config_auth_config_basic_auth_user";
  @SerializedName(SERIALIZED_NAME_REQUEST_CONFIG_AUTH_CONFIG_BASIC_AUTH_USER)
  private String requestConfigAuthConfigBasicAuthUser;

  /**
   * HTTP Auth Method to use for the HTTP call  Can either be basic_auth or api_key basic_auth CourierChannelAuthTypeBasicAuth api_key CourierChannelAuthTypeApiKey
   */
  @JsonAdapter(RequestConfigAuthTypeEnum.Adapter.class)
  public enum RequestConfigAuthTypeEnum {
    BASIC_AUTH("basic_auth"),
    
    API_KEY("api_key");

    private String value;

    RequestConfigAuthTypeEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static RequestConfigAuthTypeEnum fromValue(String value) {
      for (RequestConfigAuthTypeEnum b : RequestConfigAuthTypeEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<RequestConfigAuthTypeEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final RequestConfigAuthTypeEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public RequestConfigAuthTypeEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return RequestConfigAuthTypeEnum.fromValue(value);
      }
    }

    public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      String value = jsonElement.getAsString();
      RequestConfigAuthTypeEnum.fromValue(value);
    }
  }

  public static final String SERIALIZED_NAME_REQUEST_CONFIG_AUTH_TYPE = "request_config_auth_type";
  @SerializedName(SERIALIZED_NAME_REQUEST_CONFIG_AUTH_TYPE)
  private RequestConfigAuthTypeEnum requestConfigAuthType;

  public static final String SERIALIZED_NAME_REQUEST_CONFIG_BODY = "request_config_body";
  @SerializedName(SERIALIZED_NAME_REQUEST_CONFIG_BODY)
  private String requestConfigBody;

  public static final String SERIALIZED_NAME_REQUEST_CONFIG_HEADERS = "request_config_headers";
  @SerializedName(SERIALIZED_NAME_REQUEST_CONFIG_HEADERS)
  private Object requestConfigHeaders;

  public static final String SERIALIZED_NAME_REQUEST_CONFIG_METHOD = "request_config_method";
  @SerializedName(SERIALIZED_NAME_REQUEST_CONFIG_METHOD)
  private String requestConfigMethod;

  public static final String SERIALIZED_NAME_REQUEST_CONFIG_URL = "request_config_url";
  @SerializedName(SERIALIZED_NAME_REQUEST_CONFIG_URL)
  private String requestConfigUrl;

  public static final String SERIALIZED_NAME_UPDATED_AT = "updated_at";
  @SerializedName(SERIALIZED_NAME_UPDATED_AT)
  private OffsetDateTime updatedAt;

  public NormalizedProjectRevisionCourierChannel() {
  }

  public NormalizedProjectRevisionCourierChannel(
     OffsetDateTime createdAt, 
     OffsetDateTime updatedAt
  ) {
    this();
    this.createdAt = createdAt;
    this.updatedAt = updatedAt;
  }

  public NormalizedProjectRevisionCourierChannel channelId(String channelId) {
    this.channelId = channelId;
    return this;
  }

  /**
   * The Channel&#39;s public ID
   * @return channelId
   */
  @javax.annotation.Nonnull
  public String getChannelId() {
    return channelId;
  }

  public void setChannelId(String channelId) {
    this.channelId = channelId;
  }


  /**
   * The creation date
   * @return createdAt
   */
  @javax.annotation.Nullable
  public OffsetDateTime getCreatedAt() {
    return createdAt;
  }



  public NormalizedProjectRevisionCourierChannel requestConfigAuthConfigApiKeyIn(String requestConfigAuthConfigApiKeyIn) {
    this.requestConfigAuthConfigApiKeyIn = requestConfigAuthConfigApiKeyIn;
    return this;
  }

  /**
   * API key location  Can either be \&quot;header\&quot; or \&quot;query\&quot;
   * @return requestConfigAuthConfigApiKeyIn
   */
  @javax.annotation.Nullable
  public String getRequestConfigAuthConfigApiKeyIn() {
    return requestConfigAuthConfigApiKeyIn;
  }

  public void setRequestConfigAuthConfigApiKeyIn(String requestConfigAuthConfigApiKeyIn) {
    this.requestConfigAuthConfigApiKeyIn = requestConfigAuthConfigApiKeyIn;
  }


  public NormalizedProjectRevisionCourierChannel requestConfigAuthConfigApiKeyName(String requestConfigAuthConfigApiKeyName) {
    this.requestConfigAuthConfigApiKeyName = requestConfigAuthConfigApiKeyName;
    return this;
  }

  /**
   * API key name  Only used if the auth type is api_key
   * @return requestConfigAuthConfigApiKeyName
   */
  @javax.annotation.Nullable
  public String getRequestConfigAuthConfigApiKeyName() {
    return requestConfigAuthConfigApiKeyName;
  }

  public void setRequestConfigAuthConfigApiKeyName(String requestConfigAuthConfigApiKeyName) {
    this.requestConfigAuthConfigApiKeyName = requestConfigAuthConfigApiKeyName;
  }


  public NormalizedProjectRevisionCourierChannel requestConfigAuthConfigApiKeyValue(String requestConfigAuthConfigApiKeyValue) {
    this.requestConfigAuthConfigApiKeyValue = requestConfigAuthConfigApiKeyValue;
    return this;
  }

  /**
   * API key value  Only used if the auth type is api_key
   * @return requestConfigAuthConfigApiKeyValue
   */
  @javax.annotation.Nullable
  public String getRequestConfigAuthConfigApiKeyValue() {
    return requestConfigAuthConfigApiKeyValue;
  }

  public void setRequestConfigAuthConfigApiKeyValue(String requestConfigAuthConfigApiKeyValue) {
    this.requestConfigAuthConfigApiKeyValue = requestConfigAuthConfigApiKeyValue;
  }


  public NormalizedProjectRevisionCourierChannel requestConfigAuthConfigBasicAuthPassword(String requestConfigAuthConfigBasicAuthPassword) {
    this.requestConfigAuthConfigBasicAuthPassword = requestConfigAuthConfigBasicAuthPassword;
    return this;
  }

  /**
   * Basic Auth Password  Only used if the auth type is basic_auth
   * @return requestConfigAuthConfigBasicAuthPassword
   */
  @javax.annotation.Nullable
  public String getRequestConfigAuthConfigBasicAuthPassword() {
    return requestConfigAuthConfigBasicAuthPassword;
  }

  public void setRequestConfigAuthConfigBasicAuthPassword(String requestConfigAuthConfigBasicAuthPassword) {
    this.requestConfigAuthConfigBasicAuthPassword = requestConfigAuthConfigBasicAuthPassword;
  }


  public NormalizedProjectRevisionCourierChannel requestConfigAuthConfigBasicAuthUser(String requestConfigAuthConfigBasicAuthUser) {
    this.requestConfigAuthConfigBasicAuthUser = requestConfigAuthConfigBasicAuthUser;
    return this;
  }

  /**
   * Basic Auth Username  Only used if the auth type is basic_auth
   * @return requestConfigAuthConfigBasicAuthUser
   */
  @javax.annotation.Nullable
  public String getRequestConfigAuthConfigBasicAuthUser() {
    return requestConfigAuthConfigBasicAuthUser;
  }

  public void setRequestConfigAuthConfigBasicAuthUser(String requestConfigAuthConfigBasicAuthUser) {
    this.requestConfigAuthConfigBasicAuthUser = requestConfigAuthConfigBasicAuthUser;
  }


  public NormalizedProjectRevisionCourierChannel requestConfigAuthType(RequestConfigAuthTypeEnum requestConfigAuthType) {
    this.requestConfigAuthType = requestConfigAuthType;
    return this;
  }

  /**
   * HTTP Auth Method to use for the HTTP call  Can either be basic_auth or api_key basic_auth CourierChannelAuthTypeBasicAuth api_key CourierChannelAuthTypeApiKey
   * @return requestConfigAuthType
   */
  @javax.annotation.Nullable
  public RequestConfigAuthTypeEnum getRequestConfigAuthType() {
    return requestConfigAuthType;
  }

  public void setRequestConfigAuthType(RequestConfigAuthTypeEnum requestConfigAuthType) {
    this.requestConfigAuthType = requestConfigAuthType;
  }


  public NormalizedProjectRevisionCourierChannel requestConfigBody(String requestConfigBody) {
    this.requestConfigBody = requestConfigBody;
    return this;
  }

  /**
   * URI pointing to the JsonNet template used for HTTP body payload generation.
   * @return requestConfigBody
   */
  @javax.annotation.Nonnull
  public String getRequestConfigBody() {
    return requestConfigBody;
  }

  public void setRequestConfigBody(String requestConfigBody) {
    this.requestConfigBody = requestConfigBody;
  }


  public NormalizedProjectRevisionCourierChannel requestConfigHeaders(Object requestConfigHeaders) {
    this.requestConfigHeaders = requestConfigHeaders;
    return this;
  }

  /**
   * NullJSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger and is NULLable-
   * @return requestConfigHeaders
   */
  @javax.annotation.Nullable
  public Object getRequestConfigHeaders() {
    return requestConfigHeaders;
  }

  public void setRequestConfigHeaders(Object requestConfigHeaders) {
    this.requestConfigHeaders = requestConfigHeaders;
  }


  public NormalizedProjectRevisionCourierChannel requestConfigMethod(String requestConfigMethod) {
    this.requestConfigMethod = requestConfigMethod;
    return this;
  }

  /**
   * The HTTP method to use (GET, POST, etc) for the HTTP call
   * @return requestConfigMethod
   */
  @javax.annotation.Nonnull
  public String getRequestConfigMethod() {
    return requestConfigMethod;
  }

  public void setRequestConfigMethod(String requestConfigMethod) {
    this.requestConfigMethod = requestConfigMethod;
  }


  public NormalizedProjectRevisionCourierChannel requestConfigUrl(String requestConfigUrl) {
    this.requestConfigUrl = requestConfigUrl;
    return this;
  }

  /**
   * Get requestConfigUrl
   * @return requestConfigUrl
   */
  @javax.annotation.Nullable
  public String getRequestConfigUrl() {
    return requestConfigUrl;
  }

  public void setRequestConfigUrl(String requestConfigUrl) {
    this.requestConfigUrl = requestConfigUrl;
  }


  /**
   * Last upate time
   * @return updatedAt
   */
  @javax.annotation.Nullable
  public OffsetDateTime getUpdatedAt() {
    return updatedAt;
  }


  /**
   * A container for additional, undeclared properties.
   * This is a holder for any undeclared properties as specified with
   * the 'additionalProperties' keyword in the OAS document.
   */
  private Map<String, Object> additionalProperties;

  /**
   * Set the additional (undeclared) property with the specified name and value.
   * If the property does not already exist, create it otherwise replace it.
   *
   * @param key name of the property
   * @param value value of the property
   * @return the NormalizedProjectRevisionCourierChannel instance itself
   */
  public NormalizedProjectRevisionCourierChannel putAdditionalProperty(String key, Object value) {
    if (this.additionalProperties == null) {
        this.additionalProperties = new HashMap<String, Object>();
    }
    this.additionalProperties.put(key, value);
    return this;
  }

  /**
   * Return the additional (undeclared) property.
   *
   * @return a map of objects
   */
  public Map<String, Object> getAdditionalProperties() {
    return additionalProperties;
  }

  /**
   * Return the additional (undeclared) property with the specified name.
   *
   * @param key name of the property
   * @return an object
   */
  public Object getAdditionalProperty(String key) {
    if (this.additionalProperties == null) {
        return null;
    }
    return this.additionalProperties.get(key);
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NormalizedProjectRevisionCourierChannel normalizedProjectRevisionCourierChannel = (NormalizedProjectRevisionCourierChannel) o;
    return Objects.equals(this.channelId, normalizedProjectRevisionCourierChannel.channelId) &&
        Objects.equals(this.createdAt, normalizedProjectRevisionCourierChannel.createdAt) &&
        Objects.equals(this.requestConfigAuthConfigApiKeyIn, normalizedProjectRevisionCourierChannel.requestConfigAuthConfigApiKeyIn) &&
        Objects.equals(this.requestConfigAuthConfigApiKeyName, normalizedProjectRevisionCourierChannel.requestConfigAuthConfigApiKeyName) &&
        Objects.equals(this.requestConfigAuthConfigApiKeyValue, normalizedProjectRevisionCourierChannel.requestConfigAuthConfigApiKeyValue) &&
        Objects.equals(this.requestConfigAuthConfigBasicAuthPassword, normalizedProjectRevisionCourierChannel.requestConfigAuthConfigBasicAuthPassword) &&
        Objects.equals(this.requestConfigAuthConfigBasicAuthUser, normalizedProjectRevisionCourierChannel.requestConfigAuthConfigBasicAuthUser) &&
        Objects.equals(this.requestConfigAuthType, normalizedProjectRevisionCourierChannel.requestConfigAuthType) &&
        Objects.equals(this.requestConfigBody, normalizedProjectRevisionCourierChannel.requestConfigBody) &&
        Objects.equals(this.requestConfigHeaders, normalizedProjectRevisionCourierChannel.requestConfigHeaders) &&
        Objects.equals(this.requestConfigMethod, normalizedProjectRevisionCourierChannel.requestConfigMethod) &&
        Objects.equals(this.requestConfigUrl, normalizedProjectRevisionCourierChannel.requestConfigUrl) &&
        Objects.equals(this.updatedAt, normalizedProjectRevisionCourierChannel.updatedAt)&&
        Objects.equals(this.additionalProperties, normalizedProjectRevisionCourierChannel.additionalProperties);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(channelId, createdAt, requestConfigAuthConfigApiKeyIn, requestConfigAuthConfigApiKeyName, requestConfigAuthConfigApiKeyValue, requestConfigAuthConfigBasicAuthPassword, requestConfigAuthConfigBasicAuthUser, requestConfigAuthType, requestConfigBody, requestConfigHeaders, requestConfigMethod, requestConfigUrl, updatedAt, additionalProperties);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NormalizedProjectRevisionCourierChannel {\n");
    sb.append("    channelId: ").append(toIndentedString(channelId)).append("\n");
    sb.append("    createdAt: ").append(toIndentedString(createdAt)).append("\n");
    sb.append("    requestConfigAuthConfigApiKeyIn: ").append(toIndentedString(requestConfigAuthConfigApiKeyIn)).append("\n");
    sb.append("    requestConfigAuthConfigApiKeyName: ").append(toIndentedString(requestConfigAuthConfigApiKeyName)).append("\n");
    sb.append("    requestConfigAuthConfigApiKeyValue: ").append(toIndentedString(requestConfigAuthConfigApiKeyValue)).append("\n");
    sb.append("    requestConfigAuthConfigBasicAuthPassword: ").append(toIndentedString(requestConfigAuthConfigBasicAuthPassword)).append("\n");
    sb.append("    requestConfigAuthConfigBasicAuthUser: ").append(toIndentedString(requestConfigAuthConfigBasicAuthUser)).append("\n");
    sb.append("    requestConfigAuthType: ").append(toIndentedString(requestConfigAuthType)).append("\n");
    sb.append("    requestConfigBody: ").append(toIndentedString(requestConfigBody)).append("\n");
    sb.append("    requestConfigHeaders: ").append(toIndentedString(requestConfigHeaders)).append("\n");
    sb.append("    requestConfigMethod: ").append(toIndentedString(requestConfigMethod)).append("\n");
    sb.append("    requestConfigUrl: ").append(toIndentedString(requestConfigUrl)).append("\n");
    sb.append("    updatedAt: ").append(toIndentedString(updatedAt)).append("\n");
    sb.append("    additionalProperties: ").append(toIndentedString(additionalProperties)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("channel_id");
    openapiFields.add("created_at");
    openapiFields.add("request_config_auth_config_api_key_in");
    openapiFields.add("request_config_auth_config_api_key_name");
    openapiFields.add("request_config_auth_config_api_key_value");
    openapiFields.add("request_config_auth_config_basic_auth_password");
    openapiFields.add("request_config_auth_config_basic_auth_user");
    openapiFields.add("request_config_auth_type");
    openapiFields.add("request_config_body");
    openapiFields.add("request_config_headers");
    openapiFields.add("request_config_method");
    openapiFields.add("request_config_url");
    openapiFields.add("updated_at");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("channel_id");
    openapiRequiredFields.add("request_config_body");
    openapiRequiredFields.add("request_config_method");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to NormalizedProjectRevisionCourierChannel
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!NormalizedProjectRevisionCourierChannel.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in NormalizedProjectRevisionCourierChannel is not found in the empty JSON string", NormalizedProjectRevisionCourierChannel.openapiRequiredFields.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : NormalizedProjectRevisionCourierChannel.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("channel_id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `channel_id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("channel_id").toString()));
      }
      if ((jsonObj.get("request_config_auth_config_api_key_in") != null && !jsonObj.get("request_config_auth_config_api_key_in").isJsonNull()) && !jsonObj.get("request_config_auth_config_api_key_in").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `request_config_auth_config_api_key_in` to be a primitive type in the JSON string but got `%s`", jsonObj.get("request_config_auth_config_api_key_in").toString()));
      }
      if ((jsonObj.get("request_config_auth_config_api_key_name") != null && !jsonObj.get("request_config_auth_config_api_key_name").isJsonNull()) && !jsonObj.get("request_config_auth_config_api_key_name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `request_config_auth_config_api_key_name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("request_config_auth_config_api_key_name").toString()));
      }
      if ((jsonObj.get("request_config_auth_config_api_key_value") != null && !jsonObj.get("request_config_auth_config_api_key_value").isJsonNull()) && !jsonObj.get("request_config_auth_config_api_key_value").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `request_config_auth_config_api_key_value` to be a primitive type in the JSON string but got `%s`", jsonObj.get("request_config_auth_config_api_key_value").toString()));
      }
      if ((jsonObj.get("request_config_auth_config_basic_auth_password") != null && !jsonObj.get("request_config_auth_config_basic_auth_password").isJsonNull()) && !jsonObj.get("request_config_auth_config_basic_auth_password").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `request_config_auth_config_basic_auth_password` to be a primitive type in the JSON string but got `%s`", jsonObj.get("request_config_auth_config_basic_auth_password").toString()));
      }
      if ((jsonObj.get("request_config_auth_config_basic_auth_user") != null && !jsonObj.get("request_config_auth_config_basic_auth_user").isJsonNull()) && !jsonObj.get("request_config_auth_config_basic_auth_user").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `request_config_auth_config_basic_auth_user` to be a primitive type in the JSON string but got `%s`", jsonObj.get("request_config_auth_config_basic_auth_user").toString()));
      }
      if ((jsonObj.get("request_config_auth_type") != null && !jsonObj.get("request_config_auth_type").isJsonNull()) && !jsonObj.get("request_config_auth_type").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `request_config_auth_type` to be a primitive type in the JSON string but got `%s`", jsonObj.get("request_config_auth_type").toString()));
      }
      // validate the optional field `request_config_auth_type`
      if (jsonObj.get("request_config_auth_type") != null && !jsonObj.get("request_config_auth_type").isJsonNull()) {
        RequestConfigAuthTypeEnum.validateJsonElement(jsonObj.get("request_config_auth_type"));
      }
      if (!jsonObj.get("request_config_body").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `request_config_body` to be a primitive type in the JSON string but got `%s`", jsonObj.get("request_config_body").toString()));
      }
      if (!jsonObj.get("request_config_method").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `request_config_method` to be a primitive type in the JSON string but got `%s`", jsonObj.get("request_config_method").toString()));
      }
      if ((jsonObj.get("request_config_url") != null && !jsonObj.get("request_config_url").isJsonNull()) && !jsonObj.get("request_config_url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `request_config_url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("request_config_url").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!NormalizedProjectRevisionCourierChannel.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'NormalizedProjectRevisionCourierChannel' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<NormalizedProjectRevisionCourierChannel> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(NormalizedProjectRevisionCourierChannel.class));

       return (TypeAdapter<T>) new TypeAdapter<NormalizedProjectRevisionCourierChannel>() {
           @Override
           public void write(JsonWriter out, NormalizedProjectRevisionCourierChannel value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             obj.remove("additionalProperties");
             // serialize additional properties
             if (value.getAdditionalProperties() != null) {
               for (Map.Entry<String, Object> entry : value.getAdditionalProperties().entrySet()) {
                 if (entry.getValue() instanceof String)
                   obj.addProperty(entry.getKey(), (String) entry.getValue());
                 else if (entry.getValue() instanceof Number)
                   obj.addProperty(entry.getKey(), (Number) entry.getValue());
                 else if (entry.getValue() instanceof Boolean)
                   obj.addProperty(entry.getKey(), (Boolean) entry.getValue());
                 else if (entry.getValue() instanceof Character)
                   obj.addProperty(entry.getKey(), (Character) entry.getValue());
                 else {
                   JsonElement jsonElement = gson.toJsonTree(entry.getValue());
                   if (jsonElement.isJsonArray()) {
                     obj.add(entry.getKey(), jsonElement.getAsJsonArray());
                   } else {
                     obj.add(entry.getKey(), jsonElement.getAsJsonObject());
                   }
                 }
               }
             }
             elementAdapter.write(out, obj);
           }

           @Override
           public NormalizedProjectRevisionCourierChannel read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             JsonObject jsonObj = jsonElement.getAsJsonObject();
             // store additional fields in the deserialized instance
             NormalizedProjectRevisionCourierChannel instance = thisAdapter.fromJsonTree(jsonObj);
             for (Map.Entry<String, JsonElement> entry : jsonObj.entrySet()) {
               if (!openapiFields.contains(entry.getKey())) {
                 if (entry.getValue().isJsonPrimitive()) { // primitive type
                   if (entry.getValue().getAsJsonPrimitive().isString())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsString());
                   else if (entry.getValue().getAsJsonPrimitive().isNumber())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsNumber());
                   else if (entry.getValue().getAsJsonPrimitive().isBoolean())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsBoolean());
                   else
                     throw new IllegalArgumentException(String.format("The field `%s` has unknown primitive type. Value: %s", entry.getKey(), entry.getValue().toString()));
                 } else if (entry.getValue().isJsonArray()) {
                     instance.putAdditionalProperty(entry.getKey(), gson.fromJson(entry.getValue(), List.class));
                 } else { // JSON object
                     instance.putAdditionalProperty(entry.getKey(), gson.fromJson(entry.getValue(), HashMap.class));
                 }
               }
             }
             return instance;
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of NormalizedProjectRevisionCourierChannel given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of NormalizedProjectRevisionCourierChannel
   * @throws IOException if the JSON string is invalid with respect to NormalizedProjectRevisionCourierChannel
   */
  public static NormalizedProjectRevisionCourierChannel fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, NormalizedProjectRevisionCourierChannel.class);
  }

  /**
   * Convert an instance of NormalizedProjectRevisionCourierChannel to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

