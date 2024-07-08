/*
Ory APIs

Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

API version: v1.13.4
Contact: support@ory.sh
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package client

import (
	"encoding/json"
)

// checks if the JsonWebKeySet type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &JsonWebKeySet{}

// JsonWebKeySet JSON Web Key Set
type JsonWebKeySet struct {
	// List of JSON Web Keys  The value of the \"keys\" parameter is an array of JSON Web Key (JWK) values. By default, the order of the JWK values within the array does not imply an order of preference among them, although applications of JWK Sets can choose to assign a meaning to the order for their purposes, if desired.
	Keys []JsonWebKey `json:"keys,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _JsonWebKeySet JsonWebKeySet

// NewJsonWebKeySet instantiates a new JsonWebKeySet object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewJsonWebKeySet() *JsonWebKeySet {
	this := JsonWebKeySet{}
	return &this
}

// NewJsonWebKeySetWithDefaults instantiates a new JsonWebKeySet object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewJsonWebKeySetWithDefaults() *JsonWebKeySet {
	this := JsonWebKeySet{}
	return &this
}

// GetKeys returns the Keys field value if set, zero value otherwise.
func (o *JsonWebKeySet) GetKeys() []JsonWebKey {
	if o == nil || IsNil(o.Keys) {
		var ret []JsonWebKey
		return ret
	}
	return o.Keys
}

// GetKeysOk returns a tuple with the Keys field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *JsonWebKeySet) GetKeysOk() ([]JsonWebKey, bool) {
	if o == nil || IsNil(o.Keys) {
		return nil, false
	}
	return o.Keys, true
}

// HasKeys returns a boolean if a field has been set.
func (o *JsonWebKeySet) HasKeys() bool {
	if o != nil && !IsNil(o.Keys) {
		return true
	}

	return false
}

// SetKeys gets a reference to the given []JsonWebKey and assigns it to the Keys field.
func (o *JsonWebKeySet) SetKeys(v []JsonWebKey) {
	o.Keys = v
}

func (o JsonWebKeySet) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o JsonWebKeySet) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Keys) {
		toSerialize["keys"] = o.Keys
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return toSerialize, nil
}

func (o *JsonWebKeySet) UnmarshalJSON(data []byte) (err error) {
	varJsonWebKeySet := _JsonWebKeySet{}

	err = json.Unmarshal(data, &varJsonWebKeySet)

	if err != nil {
		return err
	}

	*o = JsonWebKeySet(varJsonWebKeySet)

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(data, &additionalProperties); err == nil {
		delete(additionalProperties, "keys")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableJsonWebKeySet struct {
	value *JsonWebKeySet
	isSet bool
}

func (v NullableJsonWebKeySet) Get() *JsonWebKeySet {
	return v.value
}

func (v *NullableJsonWebKeySet) Set(val *JsonWebKeySet) {
	v.value = val
	v.isSet = true
}

func (v NullableJsonWebKeySet) IsSet() bool {
	return v.isSet
}

func (v *NullableJsonWebKeySet) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableJsonWebKeySet(val *JsonWebKeySet) *NullableJsonWebKeySet {
	return &NullableJsonWebKeySet{value: val, isSet: true}
}

func (v NullableJsonWebKeySet) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableJsonWebKeySet) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


