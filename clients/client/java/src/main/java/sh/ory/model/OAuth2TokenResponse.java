/*
 * Ory APIs
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v0.2.0-alpha.26
 * Contact: support@ory.sh
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package sh.ory.model;

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
 * OAuth2 Token Response
 */
@ApiModel(description = "OAuth2 Token Response")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-09-06T11:35:36.962578076Z[Etc/UTC]")
public class OAuth2TokenResponse {
  public static final String SERIALIZED_NAME_ACCESS_TOKEN = "access_token";
  @SerializedName(SERIALIZED_NAME_ACCESS_TOKEN)
  private String accessToken;

  public static final String SERIALIZED_NAME_EXPIRES_IN = "expires_in";
  @SerializedName(SERIALIZED_NAME_EXPIRES_IN)
  private Long expiresIn;

  public static final String SERIALIZED_NAME_ID_TOKEN = "id_token";
  @SerializedName(SERIALIZED_NAME_ID_TOKEN)
  private Long idToken;

  public static final String SERIALIZED_NAME_REFRESH_TOKEN = "refresh_token";
  @SerializedName(SERIALIZED_NAME_REFRESH_TOKEN)
  private String refreshToken;

  public static final String SERIALIZED_NAME_SCOPE = "scope";
  @SerializedName(SERIALIZED_NAME_SCOPE)
  private Long scope;

  public static final String SERIALIZED_NAME_TOKEN_TYPE = "token_type";
  @SerializedName(SERIALIZED_NAME_TOKEN_TYPE)
  private String tokenType;

  public OAuth2TokenResponse() { 
  }

  public OAuth2TokenResponse accessToken(String accessToken) {
    
    this.accessToken = accessToken;
    return this;
  }

   /**
   * The access token issued by the authorization server.
   * @return accessToken
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The access token issued by the authorization server.")

  public String getAccessToken() {
    return accessToken;
  }


  public void setAccessToken(String accessToken) {
    this.accessToken = accessToken;
  }


  public OAuth2TokenResponse expiresIn(Long expiresIn) {
    
    this.expiresIn = expiresIn;
    return this;
  }

   /**
   * The lifetime in seconds of the access token.  For example, the value \&quot;3600\&quot; denotes that the access token will expire in one hour from the time the response was generated.
   * @return expiresIn
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The lifetime in seconds of the access token.  For example, the value \"3600\" denotes that the access token will expire in one hour from the time the response was generated.")

  public Long getExpiresIn() {
    return expiresIn;
  }


  public void setExpiresIn(Long expiresIn) {
    this.expiresIn = expiresIn;
  }


  public OAuth2TokenResponse idToken(Long idToken) {
    
    this.idToken = idToken;
    return this;
  }

   /**
   * To retrieve a refresh token request the id_token scope.
   * @return idToken
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "To retrieve a refresh token request the id_token scope.")

  public Long getIdToken() {
    return idToken;
  }


  public void setIdToken(Long idToken) {
    this.idToken = idToken;
  }


  public OAuth2TokenResponse refreshToken(String refreshToken) {
    
    this.refreshToken = refreshToken;
    return this;
  }

   /**
   * The refresh token, which can be used to obtain new access tokens. To retrieve it add the scope \&quot;offline\&quot; to your access token request.
   * @return refreshToken
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The refresh token, which can be used to obtain new access tokens. To retrieve it add the scope \"offline\" to your access token request.")

  public String getRefreshToken() {
    return refreshToken;
  }


  public void setRefreshToken(String refreshToken) {
    this.refreshToken = refreshToken;
  }


  public OAuth2TokenResponse scope(Long scope) {
    
    this.scope = scope;
    return this;
  }

   /**
   * The scope of the access token
   * @return scope
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The scope of the access token")

  public Long getScope() {
    return scope;
  }


  public void setScope(Long scope) {
    this.scope = scope;
  }


  public OAuth2TokenResponse tokenType(String tokenType) {
    
    this.tokenType = tokenType;
    return this;
  }

   /**
   * The type of the token issued
   * @return tokenType
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The type of the token issued")

  public String getTokenType() {
    return tokenType;
  }


  public void setTokenType(String tokenType) {
    this.tokenType = tokenType;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OAuth2TokenResponse oAuth2TokenResponse = (OAuth2TokenResponse) o;
    return Objects.equals(this.accessToken, oAuth2TokenResponse.accessToken) &&
        Objects.equals(this.expiresIn, oAuth2TokenResponse.expiresIn) &&
        Objects.equals(this.idToken, oAuth2TokenResponse.idToken) &&
        Objects.equals(this.refreshToken, oAuth2TokenResponse.refreshToken) &&
        Objects.equals(this.scope, oAuth2TokenResponse.scope) &&
        Objects.equals(this.tokenType, oAuth2TokenResponse.tokenType);
  }

  @Override
  public int hashCode() {
    return Objects.hash(accessToken, expiresIn, idToken, refreshToken, scope, tokenType);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class OAuth2TokenResponse {\n");
    sb.append("    accessToken: ").append(toIndentedString(accessToken)).append("\n");
    sb.append("    expiresIn: ").append(toIndentedString(expiresIn)).append("\n");
    sb.append("    idToken: ").append(toIndentedString(idToken)).append("\n");
    sb.append("    refreshToken: ").append(toIndentedString(refreshToken)).append("\n");
    sb.append("    scope: ").append(toIndentedString(scope)).append("\n");
    sb.append("    tokenType: ").append(toIndentedString(tokenType)).append("\n");
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

