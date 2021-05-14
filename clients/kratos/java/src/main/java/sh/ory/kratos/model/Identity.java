/*
 * Ory Kratos API
 * Documentation for all public and administrative Ory Kratos APIs. Public and administrative APIs are exposed on different ports. Public APIs can face the public internet without any protection while administrative APIs should never be exposed without prior authorization. To protect the administative API port you should use something like Nginx, Ory Oathkeeper, or any other technology capable of authorizing incoming requests. 
 *
 * The version of the OpenAPI document: v0.6.2-alpha.1
 * Contact: hi@ory.sh
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package sh.ory.kratos.model;

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
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import sh.ory.kratos.model.RecoveryAddress;
import sh.ory.kratos.model.VerifiableAddress;

/**
 * Identity
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-05-14T16:52:43.576209975Z[Etc/UTC]")
public class Identity {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private UUID id;

  public static final String SERIALIZED_NAME_RECOVERY_ADDRESSES = "recovery_addresses";
  @SerializedName(SERIALIZED_NAME_RECOVERY_ADDRESSES)
  private List<RecoveryAddress> recoveryAddresses = null;

  public static final String SERIALIZED_NAME_SCHEMA_ID = "schema_id";
  @SerializedName(SERIALIZED_NAME_SCHEMA_ID)
  private String schemaId;

  public static final String SERIALIZED_NAME_SCHEMA_URL = "schema_url";
  @SerializedName(SERIALIZED_NAME_SCHEMA_URL)
  private String schemaUrl;

  public static final String SERIALIZED_NAME_TRAITS = "traits";
  @SerializedName(SERIALIZED_NAME_TRAITS)
  private Object traits;

  public static final String SERIALIZED_NAME_VERIFIABLE_ADDRESSES = "verifiable_addresses";
  @SerializedName(SERIALIZED_NAME_VERIFIABLE_ADDRESSES)
  private List<VerifiableAddress> verifiableAddresses = null;


  public Identity id(UUID id) {
    
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @ApiModelProperty(required = true, value = "")

  public UUID getId() {
    return id;
  }


  public void setId(UUID id) {
    this.id = id;
  }


  public Identity recoveryAddresses(List<RecoveryAddress> recoveryAddresses) {
    
    this.recoveryAddresses = recoveryAddresses;
    return this;
  }

  public Identity addRecoveryAddressesItem(RecoveryAddress recoveryAddressesItem) {
    if (this.recoveryAddresses == null) {
      this.recoveryAddresses = new ArrayList<>();
    }
    this.recoveryAddresses.add(recoveryAddressesItem);
    return this;
  }

   /**
   * RecoveryAddresses contains all the addresses that can be used to recover an identity.
   * @return recoveryAddresses
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "RecoveryAddresses contains all the addresses that can be used to recover an identity.")

  public List<RecoveryAddress> getRecoveryAddresses() {
    return recoveryAddresses;
  }


  public void setRecoveryAddresses(List<RecoveryAddress> recoveryAddresses) {
    this.recoveryAddresses = recoveryAddresses;
  }


  public Identity schemaId(String schemaId) {
    
    this.schemaId = schemaId;
    return this;
  }

   /**
   * SchemaID is the ID of the JSON Schema to be used for validating the identity&#39;s traits.
   * @return schemaId
  **/
  @ApiModelProperty(required = true, value = "SchemaID is the ID of the JSON Schema to be used for validating the identity's traits.")

  public String getSchemaId() {
    return schemaId;
  }


  public void setSchemaId(String schemaId) {
    this.schemaId = schemaId;
  }


  public Identity schemaUrl(String schemaUrl) {
    
    this.schemaUrl = schemaUrl;
    return this;
  }

   /**
   * SchemaURL is the URL of the endpoint where the identity&#39;s traits schema can be fetched from.  format: url
   * @return schemaUrl
  **/
  @ApiModelProperty(required = true, value = "SchemaURL is the URL of the endpoint where the identity's traits schema can be fetched from.  format: url")

  public String getSchemaUrl() {
    return schemaUrl;
  }


  public void setSchemaUrl(String schemaUrl) {
    this.schemaUrl = schemaUrl;
  }


  public Identity traits(Object traits) {
    
    this.traits = traits;
    return this;
  }

   /**
   * Get traits
   * @return traits
  **/
  @ApiModelProperty(required = true, value = "")

  public Object getTraits() {
    return traits;
  }


  public void setTraits(Object traits) {
    this.traits = traits;
  }


  public Identity verifiableAddresses(List<VerifiableAddress> verifiableAddresses) {
    
    this.verifiableAddresses = verifiableAddresses;
    return this;
  }

  public Identity addVerifiableAddressesItem(VerifiableAddress verifiableAddressesItem) {
    if (this.verifiableAddresses == null) {
      this.verifiableAddresses = new ArrayList<>();
    }
    this.verifiableAddresses.add(verifiableAddressesItem);
    return this;
  }

   /**
   * VerifiableAddresses contains all the addresses that can be verified by the user.
   * @return verifiableAddresses
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "VerifiableAddresses contains all the addresses that can be verified by the user.")

  public List<VerifiableAddress> getVerifiableAddresses() {
    return verifiableAddresses;
  }


  public void setVerifiableAddresses(List<VerifiableAddress> verifiableAddresses) {
    this.verifiableAddresses = verifiableAddresses;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Identity identity = (Identity) o;
    return Objects.equals(this.id, identity.id) &&
        Objects.equals(this.recoveryAddresses, identity.recoveryAddresses) &&
        Objects.equals(this.schemaId, identity.schemaId) &&
        Objects.equals(this.schemaUrl, identity.schemaUrl) &&
        Objects.equals(this.traits, identity.traits) &&
        Objects.equals(this.verifiableAddresses, identity.verifiableAddresses);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, recoveryAddresses, schemaId, schemaUrl, traits, verifiableAddresses);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Identity {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    recoveryAddresses: ").append(toIndentedString(recoveryAddresses)).append("\n");
    sb.append("    schemaId: ").append(toIndentedString(schemaId)).append("\n");
    sb.append("    schemaUrl: ").append(toIndentedString(schemaUrl)).append("\n");
    sb.append("    traits: ").append(toIndentedString(traits)).append("\n");
    sb.append("    verifiableAddresses: ").append(toIndentedString(verifiableAddresses)).append("\n");
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

