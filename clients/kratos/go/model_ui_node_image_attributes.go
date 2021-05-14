/*
 * Ory Kratos API
 *
 * Documentation for all public and administrative Ory Kratos APIs. Public and administrative APIs are exposed on different ports. Public APIs can face the public internet without any protection while administrative APIs should never be exposed without prior authorization. To protect the administative API port you should use something like Nginx, Ory Oathkeeper, or any other technology capable of authorizing incoming requests. 
 *
 * API version: v0.6.2-alpha.1
 * Contact: hi@ory.sh
 */

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package client

import (
	"encoding/json"
)

// UiNodeImageAttributes struct for UiNodeImageAttributes
type UiNodeImageAttributes struct {
	// The image's source URL.  format: uri
	Src string `json:"src"`
}

// NewUiNodeImageAttributes instantiates a new UiNodeImageAttributes object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUiNodeImageAttributes(src string) *UiNodeImageAttributes {
	this := UiNodeImageAttributes{}
	this.Src = src
	return &this
}

// NewUiNodeImageAttributesWithDefaults instantiates a new UiNodeImageAttributes object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUiNodeImageAttributesWithDefaults() *UiNodeImageAttributes {
	this := UiNodeImageAttributes{}
	return &this
}

// GetSrc returns the Src field value
func (o *UiNodeImageAttributes) GetSrc() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Src
}

// GetSrcOk returns a tuple with the Src field value
// and a boolean to check if the value has been set.
func (o *UiNodeImageAttributes) GetSrcOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Src, true
}

// SetSrc sets field value
func (o *UiNodeImageAttributes) SetSrc(v string) {
	o.Src = v
}

func (o UiNodeImageAttributes) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["src"] = o.Src
	}
	return json.Marshal(toSerialize)
}

type NullableUiNodeImageAttributes struct {
	value *UiNodeImageAttributes
	isSet bool
}

func (v NullableUiNodeImageAttributes) Get() *UiNodeImageAttributes {
	return v.value
}

func (v *NullableUiNodeImageAttributes) Set(val *UiNodeImageAttributes) {
	v.value = val
	v.isSet = true
}

func (v NullableUiNodeImageAttributes) IsSet() bool {
	return v.isSet
}

func (v *NullableUiNodeImageAttributes) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUiNodeImageAttributes(val *UiNodeImageAttributes) *NullableUiNodeImageAttributes {
	return &NullableUiNodeImageAttributes{value: val, isSet: true}
}

func (v NullableUiNodeImageAttributes) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUiNodeImageAttributes) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


