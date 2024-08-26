/*
Ory APIs

Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

API version: v1.14.4
Contact: support@ory.sh
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package client

import (
	"encoding/json"
	"fmt"
)

// checks if the GetVersion200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetVersion200Response{}

// GetVersion200Response struct for GetVersion200Response
type GetVersion200Response struct {
	// The version of Ory Kratos.
	Version string `json:"version"`
	AdditionalProperties map[string]interface{}
}

type _GetVersion200Response GetVersion200Response

// NewGetVersion200Response instantiates a new GetVersion200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetVersion200Response(version string) *GetVersion200Response {
	this := GetVersion200Response{}
	this.Version = version
	return &this
}

// NewGetVersion200ResponseWithDefaults instantiates a new GetVersion200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetVersion200ResponseWithDefaults() *GetVersion200Response {
	this := GetVersion200Response{}
	return &this
}

// GetVersion returns the Version field value
func (o *GetVersion200Response) GetVersion() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Version
}

// GetVersionOk returns a tuple with the Version field value
// and a boolean to check if the value has been set.
func (o *GetVersion200Response) GetVersionOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Version, true
}

// SetVersion sets field value
func (o *GetVersion200Response) SetVersion(v string) {
	o.Version = v
}

func (o GetVersion200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetVersion200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["version"] = o.Version

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return toSerialize, nil
}

func (o *GetVersion200Response) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"version",
	}

	allProperties := make(map[string]interface{})

	err = json.Unmarshal(data, &allProperties)

	if err != nil {
		return err;
	}

	for _, requiredProperty := range(requiredProperties) {
		if _, exists := allProperties[requiredProperty]; !exists {
			return fmt.Errorf("no value given for required property %v", requiredProperty)
		}
	}

	varGetVersion200Response := _GetVersion200Response{}

	err = json.Unmarshal(data, &varGetVersion200Response)

	if err != nil {
		return err
	}

	*o = GetVersion200Response(varGetVersion200Response)

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(data, &additionalProperties); err == nil {
		delete(additionalProperties, "version")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableGetVersion200Response struct {
	value *GetVersion200Response
	isSet bool
}

func (v NullableGetVersion200Response) Get() *GetVersion200Response {
	return v.value
}

func (v *NullableGetVersion200Response) Set(val *GetVersion200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableGetVersion200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableGetVersion200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetVersion200Response(val *GetVersion200Response) *NullableGetVersion200Response {
	return &NullableGetVersion200Response{value: val, isSet: true}
}

func (v NullableGetVersion200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetVersion200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


