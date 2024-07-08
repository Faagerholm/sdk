/*
Ory APIs

Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

API version: v1.13.3
Contact: support@ory.sh
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package client

import (
	"encoding/json"
)

// checks if the CreateWorkspaceMemberInviteBody type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &CreateWorkspaceMemberInviteBody{}

// CreateWorkspaceMemberInviteBody Create Workspace Invite Request Body
type CreateWorkspaceMemberInviteBody struct {
	// A email to invite
	InviteeEmail *string `json:"invitee_email,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _CreateWorkspaceMemberInviteBody CreateWorkspaceMemberInviteBody

// NewCreateWorkspaceMemberInviteBody instantiates a new CreateWorkspaceMemberInviteBody object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewCreateWorkspaceMemberInviteBody() *CreateWorkspaceMemberInviteBody {
	this := CreateWorkspaceMemberInviteBody{}
	return &this
}

// NewCreateWorkspaceMemberInviteBodyWithDefaults instantiates a new CreateWorkspaceMemberInviteBody object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewCreateWorkspaceMemberInviteBodyWithDefaults() *CreateWorkspaceMemberInviteBody {
	this := CreateWorkspaceMemberInviteBody{}
	return &this
}

// GetInviteeEmail returns the InviteeEmail field value if set, zero value otherwise.
func (o *CreateWorkspaceMemberInviteBody) GetInviteeEmail() string {
	if o == nil || IsNil(o.InviteeEmail) {
		var ret string
		return ret
	}
	return *o.InviteeEmail
}

// GetInviteeEmailOk returns a tuple with the InviteeEmail field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CreateWorkspaceMemberInviteBody) GetInviteeEmailOk() (*string, bool) {
	if o == nil || IsNil(o.InviteeEmail) {
		return nil, false
	}
	return o.InviteeEmail, true
}

// HasInviteeEmail returns a boolean if a field has been set.
func (o *CreateWorkspaceMemberInviteBody) HasInviteeEmail() bool {
	if o != nil && !IsNil(o.InviteeEmail) {
		return true
	}

	return false
}

// SetInviteeEmail gets a reference to the given string and assigns it to the InviteeEmail field.
func (o *CreateWorkspaceMemberInviteBody) SetInviteeEmail(v string) {
	o.InviteeEmail = &v
}

func (o CreateWorkspaceMemberInviteBody) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o CreateWorkspaceMemberInviteBody) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.InviteeEmail) {
		toSerialize["invitee_email"] = o.InviteeEmail
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return toSerialize, nil
}

func (o *CreateWorkspaceMemberInviteBody) UnmarshalJSON(data []byte) (err error) {
	varCreateWorkspaceMemberInviteBody := _CreateWorkspaceMemberInviteBody{}

	err = json.Unmarshal(data, &varCreateWorkspaceMemberInviteBody)

	if err != nil {
		return err
	}

	*o = CreateWorkspaceMemberInviteBody(varCreateWorkspaceMemberInviteBody)

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(data, &additionalProperties); err == nil {
		delete(additionalProperties, "invitee_email")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableCreateWorkspaceMemberInviteBody struct {
	value *CreateWorkspaceMemberInviteBody
	isSet bool
}

func (v NullableCreateWorkspaceMemberInviteBody) Get() *CreateWorkspaceMemberInviteBody {
	return v.value
}

func (v *NullableCreateWorkspaceMemberInviteBody) Set(val *CreateWorkspaceMemberInviteBody) {
	v.value = val
	v.isSet = true
}

func (v NullableCreateWorkspaceMemberInviteBody) IsSet() bool {
	return v.isSet
}

func (v *NullableCreateWorkspaceMemberInviteBody) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableCreateWorkspaceMemberInviteBody(val *CreateWorkspaceMemberInviteBody) *NullableCreateWorkspaceMemberInviteBody {
	return &NullableCreateWorkspaceMemberInviteBody{value: val, isSet: true}
}

func (v NullableCreateWorkspaceMemberInviteBody) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableCreateWorkspaceMemberInviteBody) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


