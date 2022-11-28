/*
Ory APIs

Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

API version: v1.0.1
Contact: support@ory.sh
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package client

import (
	"encoding/json"
)

// Namespace struct for Namespace
type Namespace struct {
	// Name of the namespace.
	Name *string `json:"name,omitempty"`
}

// NewNamespace instantiates a new Namespace object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewNamespace() *Namespace {
	this := Namespace{}
	return &this
}

// NewNamespaceWithDefaults instantiates a new Namespace object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewNamespaceWithDefaults() *Namespace {
	this := Namespace{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *Namespace) GetName() string {
	if o == nil || o.Name == nil {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Namespace) GetNameOk() (*string, bool) {
	if o == nil || o.Name == nil {
		return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *Namespace) HasName() bool {
	if o != nil && o.Name != nil {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *Namespace) SetName(v string) {
	o.Name = &v
}

func (o Namespace) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Name != nil {
		toSerialize["name"] = o.Name
	}
	return json.Marshal(toSerialize)
}

type NullableNamespace struct {
	value *Namespace
	isSet bool
}

func (v NullableNamespace) Get() *Namespace {
	return v.value
}

func (v *NullableNamespace) Set(val *Namespace) {
	v.value = val
	v.isSet = true
}

func (v NullableNamespace) IsSet() bool {
	return v.isSet
}

func (v *NullableNamespace) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableNamespace(val *Namespace) *NullableNamespace {
	return &NullableNamespace{value: val, isSet: true}
}

func (v NullableNamespace) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableNamespace) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


