/*
 * Ory Identities API
 * This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 
 *
 * The version of the OpenAPI document: v1.0.0
 * Contact: office@ory.sh
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package sh.ory.kratos.model;

import java.util.Objects;
import java.util.Arrays;
import io.swagger.annotations.ApiModel;
import com.google.gson.annotations.SerializedName;

import java.io.IOException;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

/**
 * It can either be &#x60;email&#x60; or &#x60;phone&#x60;
 */
@JsonAdapter(CourierMessageType.Adapter.class)
public enum CourierMessageType {
  
  EMAIL("email"),
  
  PHONE("phone");

  private String value;

  CourierMessageType(String value) {
    this.value = value;
  }

  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static CourierMessageType fromValue(String value) {
    for (CourierMessageType b : CourierMessageType.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }

  public static class Adapter extends TypeAdapter<CourierMessageType> {
    @Override
    public void write(final JsonWriter jsonWriter, final CourierMessageType enumeration) throws IOException {
      jsonWriter.value(enumeration.getValue());
    }

    @Override
    public CourierMessageType read(final JsonReader jsonReader) throws IOException {
      String value = jsonReader.nextString();
      return CourierMessageType.fromValue(value);
    }
  }
}

