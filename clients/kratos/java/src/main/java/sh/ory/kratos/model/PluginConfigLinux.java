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
import sh.ory.kratos.model.PluginDevice;

/**
 * PluginConfigLinux plugin config linux
 */
@ApiModel(description = "PluginConfigLinux plugin config linux")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-05-14T16:52:43.576209975Z[Etc/UTC]")
public class PluginConfigLinux {
  public static final String SERIALIZED_NAME_ALLOW_ALL_DEVICES = "AllowAllDevices";
  @SerializedName(SERIALIZED_NAME_ALLOW_ALL_DEVICES)
  private Boolean allowAllDevices;

  public static final String SERIALIZED_NAME_CAPABILITIES = "Capabilities";
  @SerializedName(SERIALIZED_NAME_CAPABILITIES)
  private List<String> capabilities = new ArrayList<>();

  public static final String SERIALIZED_NAME_DEVICES = "Devices";
  @SerializedName(SERIALIZED_NAME_DEVICES)
  private List<PluginDevice> devices = new ArrayList<>();


  public PluginConfigLinux allowAllDevices(Boolean allowAllDevices) {
    
    this.allowAllDevices = allowAllDevices;
    return this;
  }

   /**
   * allow all devices
   * @return allowAllDevices
  **/
  @ApiModelProperty(required = true, value = "allow all devices")

  public Boolean getAllowAllDevices() {
    return allowAllDevices;
  }


  public void setAllowAllDevices(Boolean allowAllDevices) {
    this.allowAllDevices = allowAllDevices;
  }


  public PluginConfigLinux capabilities(List<String> capabilities) {
    
    this.capabilities = capabilities;
    return this;
  }

  public PluginConfigLinux addCapabilitiesItem(String capabilitiesItem) {
    this.capabilities.add(capabilitiesItem);
    return this;
  }

   /**
   * capabilities
   * @return capabilities
  **/
  @ApiModelProperty(required = true, value = "capabilities")

  public List<String> getCapabilities() {
    return capabilities;
  }


  public void setCapabilities(List<String> capabilities) {
    this.capabilities = capabilities;
  }


  public PluginConfigLinux devices(List<PluginDevice> devices) {
    
    this.devices = devices;
    return this;
  }

  public PluginConfigLinux addDevicesItem(PluginDevice devicesItem) {
    this.devices.add(devicesItem);
    return this;
  }

   /**
   * devices
   * @return devices
  **/
  @ApiModelProperty(required = true, value = "devices")

  public List<PluginDevice> getDevices() {
    return devices;
  }


  public void setDevices(List<PluginDevice> devices) {
    this.devices = devices;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PluginConfigLinux pluginConfigLinux = (PluginConfigLinux) o;
    return Objects.equals(this.allowAllDevices, pluginConfigLinux.allowAllDevices) &&
        Objects.equals(this.capabilities, pluginConfigLinux.capabilities) &&
        Objects.equals(this.devices, pluginConfigLinux.devices);
  }

  @Override
  public int hashCode() {
    return Objects.hash(allowAllDevices, capabilities, devices);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PluginConfigLinux {\n");
    sb.append("    allowAllDevices: ").append(toIndentedString(allowAllDevices)).append("\n");
    sb.append("    capabilities: ").append(toIndentedString(capabilities)).append("\n");
    sb.append("    devices: ").append(toIndentedString(devices)).append("\n");
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

