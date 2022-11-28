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

// SourcePosition struct for SourcePosition
type SourcePosition struct {
	Line *int64 `json:"Line,omitempty"`
	Column *int64 `json:"column,omitempty"`
}

// NewSourcePosition instantiates a new SourcePosition object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSourcePosition() *SourcePosition {
	this := SourcePosition{}
	return &this
}

// NewSourcePositionWithDefaults instantiates a new SourcePosition object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSourcePositionWithDefaults() *SourcePosition {
	this := SourcePosition{}
	return &this
}

// GetLine returns the Line field value if set, zero value otherwise.
func (o *SourcePosition) GetLine() int64 {
	if o == nil || o.Line == nil {
		var ret int64
		return ret
	}
	return *o.Line
}

// GetLineOk returns a tuple with the Line field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SourcePosition) GetLineOk() (*int64, bool) {
	if o == nil || o.Line == nil {
		return nil, false
	}
	return o.Line, true
}

// HasLine returns a boolean if a field has been set.
func (o *SourcePosition) HasLine() bool {
	if o != nil && o.Line != nil {
		return true
	}

	return false
}

// SetLine gets a reference to the given int64 and assigns it to the Line field.
func (o *SourcePosition) SetLine(v int64) {
	o.Line = &v
}

// GetColumn returns the Column field value if set, zero value otherwise.
func (o *SourcePosition) GetColumn() int64 {
	if o == nil || o.Column == nil {
		var ret int64
		return ret
	}
	return *o.Column
}

// GetColumnOk returns a tuple with the Column field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SourcePosition) GetColumnOk() (*int64, bool) {
	if o == nil || o.Column == nil {
		return nil, false
	}
	return o.Column, true
}

// HasColumn returns a boolean if a field has been set.
func (o *SourcePosition) HasColumn() bool {
	if o != nil && o.Column != nil {
		return true
	}

	return false
}

// SetColumn gets a reference to the given int64 and assigns it to the Column field.
func (o *SourcePosition) SetColumn(v int64) {
	o.Column = &v
}

func (o SourcePosition) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Line != nil {
		toSerialize["Line"] = o.Line
	}
	if o.Column != nil {
		toSerialize["column"] = o.Column
	}
	return json.Marshal(toSerialize)
}

type NullableSourcePosition struct {
	value *SourcePosition
	isSet bool
}

func (v NullableSourcePosition) Get() *SourcePosition {
	return v.value
}

func (v *NullableSourcePosition) Set(val *SourcePosition) {
	v.value = val
	v.isSet = true
}

func (v NullableSourcePosition) IsSet() bool {
	return v.isSet
}

func (v *NullableSourcePosition) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSourcePosition(val *SourcePosition) *NullableSourcePosition {
	return &NullableSourcePosition{value: val, isSet: true}
}

func (v NullableSourcePosition) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSourcePosition) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


