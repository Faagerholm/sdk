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
)

// checks if the IdentityPatchResponse type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &IdentityPatchResponse{}

// IdentityPatchResponse Response for a single identity patch
type IdentityPatchResponse struct {
	// The action for this specific patch create ActionCreate  Create this identity.
	Action *string `json:"action,omitempty"`
	// The identity ID payload of this patch
	Identity *string `json:"identity,omitempty"`
	// The ID of this patch response, if an ID was specified in the patch.
	PatchId *string `json:"patch_id,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _IdentityPatchResponse IdentityPatchResponse

// NewIdentityPatchResponse instantiates a new IdentityPatchResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewIdentityPatchResponse() *IdentityPatchResponse {
	this := IdentityPatchResponse{}
	return &this
}

// NewIdentityPatchResponseWithDefaults instantiates a new IdentityPatchResponse object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewIdentityPatchResponseWithDefaults() *IdentityPatchResponse {
	this := IdentityPatchResponse{}
	return &this
}

// GetAction returns the Action field value if set, zero value otherwise.
func (o *IdentityPatchResponse) GetAction() string {
	if o == nil || IsNil(o.Action) {
		var ret string
		return ret
	}
	return *o.Action
}

// GetActionOk returns a tuple with the Action field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *IdentityPatchResponse) GetActionOk() (*string, bool) {
	if o == nil || IsNil(o.Action) {
		return nil, false
	}
	return o.Action, true
}

// HasAction returns a boolean if a field has been set.
func (o *IdentityPatchResponse) HasAction() bool {
	if o != nil && !IsNil(o.Action) {
		return true
	}

	return false
}

// SetAction gets a reference to the given string and assigns it to the Action field.
func (o *IdentityPatchResponse) SetAction(v string) {
	o.Action = &v
}

// GetIdentity returns the Identity field value if set, zero value otherwise.
func (o *IdentityPatchResponse) GetIdentity() string {
	if o == nil || IsNil(o.Identity) {
		var ret string
		return ret
	}
	return *o.Identity
}

// GetIdentityOk returns a tuple with the Identity field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *IdentityPatchResponse) GetIdentityOk() (*string, bool) {
	if o == nil || IsNil(o.Identity) {
		return nil, false
	}
	return o.Identity, true
}

// HasIdentity returns a boolean if a field has been set.
func (o *IdentityPatchResponse) HasIdentity() bool {
	if o != nil && !IsNil(o.Identity) {
		return true
	}

	return false
}

// SetIdentity gets a reference to the given string and assigns it to the Identity field.
func (o *IdentityPatchResponse) SetIdentity(v string) {
	o.Identity = &v
}

// GetPatchId returns the PatchId field value if set, zero value otherwise.
func (o *IdentityPatchResponse) GetPatchId() string {
	if o == nil || IsNil(o.PatchId) {
		var ret string
		return ret
	}
	return *o.PatchId
}

// GetPatchIdOk returns a tuple with the PatchId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *IdentityPatchResponse) GetPatchIdOk() (*string, bool) {
	if o == nil || IsNil(o.PatchId) {
		return nil, false
	}
	return o.PatchId, true
}

// HasPatchId returns a boolean if a field has been set.
func (o *IdentityPatchResponse) HasPatchId() bool {
	if o != nil && !IsNil(o.PatchId) {
		return true
	}

	return false
}

// SetPatchId gets a reference to the given string and assigns it to the PatchId field.
func (o *IdentityPatchResponse) SetPatchId(v string) {
	o.PatchId = &v
}

func (o IdentityPatchResponse) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o IdentityPatchResponse) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Action) {
		toSerialize["action"] = o.Action
	}
	if !IsNil(o.Identity) {
		toSerialize["identity"] = o.Identity
	}
	if !IsNil(o.PatchId) {
		toSerialize["patch_id"] = o.PatchId
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return toSerialize, nil
}

func (o *IdentityPatchResponse) UnmarshalJSON(data []byte) (err error) {
	varIdentityPatchResponse := _IdentityPatchResponse{}

	err = json.Unmarshal(data, &varIdentityPatchResponse)

	if err != nil {
		return err
	}

	*o = IdentityPatchResponse(varIdentityPatchResponse)

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(data, &additionalProperties); err == nil {
		delete(additionalProperties, "action")
		delete(additionalProperties, "identity")
		delete(additionalProperties, "patch_id")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableIdentityPatchResponse struct {
	value *IdentityPatchResponse
	isSet bool
}

func (v NullableIdentityPatchResponse) Get() *IdentityPatchResponse {
	return v.value
}

func (v *NullableIdentityPatchResponse) Set(val *IdentityPatchResponse) {
	v.value = val
	v.isSet = true
}

func (v NullableIdentityPatchResponse) IsSet() bool {
	return v.isSet
}

func (v *NullableIdentityPatchResponse) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableIdentityPatchResponse(val *IdentityPatchResponse) *NullableIdentityPatchResponse {
	return &NullableIdentityPatchResponse{value: val, isSet: true}
}

func (v NullableIdentityPatchResponse) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableIdentityPatchResponse) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


