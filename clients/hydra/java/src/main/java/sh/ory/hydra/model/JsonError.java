/*
 * ORY Hydra
 * Welcome to the ORY Hydra HTTP API documentation. You will find documentation for all HTTP APIs here.
 *
 * The version of the OpenAPI document: v1.11.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package sh.ory.hydra.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * Error responses are sent when an error (e.g. unauthorized, bad request, ...) occurred.
 */
@ApiModel(description = "Error responses are sent when an error (e.g. unauthorized, bad request, ...) occurred.")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-05-27T08:52:01.831221547Z[Etc/UTC]")
public class JsonError {
  public static final String SERIALIZED_NAME_ERROR = "error";
  @SerializedName(SERIALIZED_NAME_ERROR)
  private String error;

  public static final String SERIALIZED_NAME_ERROR_DEBUG = "error_debug";
  @SerializedName(SERIALIZED_NAME_ERROR_DEBUG)
  private String errorDebug;

  public static final String SERIALIZED_NAME_ERROR_DESCRIPTION = "error_description";
  @SerializedName(SERIALIZED_NAME_ERROR_DESCRIPTION)
  private String errorDescription;

  public static final String SERIALIZED_NAME_STATUS_CODE = "status_code";
  @SerializedName(SERIALIZED_NAME_STATUS_CODE)
  private Long statusCode;

  public JsonError() { 
  }

  public JsonError error(String error) {
    
    this.error = error;
    return this;
  }

   /**
   * Name is the error name.
   * @return error
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "The requested resource could not be found", value = "Name is the error name.")

  public String getError() {
    return error;
  }


  public void setError(String error) {
    this.error = error;
  }


  public JsonError errorDebug(String errorDebug) {
    
    this.errorDebug = errorDebug;
    return this;
  }

   /**
   * Debug contains debug information. This is usually not available and has to be enabled.
   * @return errorDebug
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "The database adapter was unable to find the element", value = "Debug contains debug information. This is usually not available and has to be enabled.")

  public String getErrorDebug() {
    return errorDebug;
  }


  public void setErrorDebug(String errorDebug) {
    this.errorDebug = errorDebug;
  }


  public JsonError errorDescription(String errorDescription) {
    
    this.errorDescription = errorDescription;
    return this;
  }

   /**
   * Description contains further information on the nature of the error.
   * @return errorDescription
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "Object with ID 12345 does not exist", value = "Description contains further information on the nature of the error.")

  public String getErrorDescription() {
    return errorDescription;
  }


  public void setErrorDescription(String errorDescription) {
    this.errorDescription = errorDescription;
  }


  public JsonError statusCode(Long statusCode) {
    
    this.statusCode = statusCode;
    return this;
  }

   /**
   * Code represents the error status code (404, 403, 401, ...).
   * @return statusCode
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "404", value = "Code represents the error status code (404, 403, 401, ...).")

  public Long getStatusCode() {
    return statusCode;
  }


  public void setStatusCode(Long statusCode) {
    this.statusCode = statusCode;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    JsonError jsonError = (JsonError) o;
    return Objects.equals(this.error, jsonError.error) &&
        Objects.equals(this.errorDebug, jsonError.errorDebug) &&
        Objects.equals(this.errorDescription, jsonError.errorDescription) &&
        Objects.equals(this.statusCode, jsonError.statusCode);
  }

  @Override
  public int hashCode() {
    return Objects.hash(error, errorDebug, errorDescription, statusCode);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class JsonError {\n");
    sb.append("    error: ").append(toIndentedString(error)).append("\n");
    sb.append("    errorDebug: ").append(toIndentedString(errorDebug)).append("\n");
    sb.append("    errorDescription: ").append(toIndentedString(errorDescription)).append("\n");
    sb.append("    statusCode: ").append(toIndentedString(statusCode)).append("\n");
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

}

