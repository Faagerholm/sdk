/*
Ory Identities API

This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 

API version: v1.0.0
Contact: office@ory.sh
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package client

import (
	"encoding/json"
)

// ContinueWithSetOrySessionToken Indicates that a session was issued, and the application should use this token for authenticated requests
type ContinueWithSetOrySessionToken struct {
	// Action will always be `set_ory_session_token` set_ory_session_token ContinueWithActionSetOrySessionToken show_verification_ui ContinueWithActionShowVerificationUI
	Action string `json:"action"`
	// Token is the token of the session
	OrySessionToken string `json:"ory_session_token"`
	AdditionalProperties map[string]interface{}
}

type _ContinueWithSetOrySessionToken ContinueWithSetOrySessionToken

// NewContinueWithSetOrySessionToken instantiates a new ContinueWithSetOrySessionToken object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewContinueWithSetOrySessionToken(action string, orySessionToken string) *ContinueWithSetOrySessionToken {
	this := ContinueWithSetOrySessionToken{}
	this.Action = action
	this.OrySessionToken = orySessionToken
	return &this
}

// NewContinueWithSetOrySessionTokenWithDefaults instantiates a new ContinueWithSetOrySessionToken object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewContinueWithSetOrySessionTokenWithDefaults() *ContinueWithSetOrySessionToken {
	this := ContinueWithSetOrySessionToken{}
	return &this
}

// GetAction returns the Action field value
func (o *ContinueWithSetOrySessionToken) GetAction() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Action
}

// GetActionOk returns a tuple with the Action field value
// and a boolean to check if the value has been set.
func (o *ContinueWithSetOrySessionToken) GetActionOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Action, true
}

// SetAction sets field value
func (o *ContinueWithSetOrySessionToken) SetAction(v string) {
	o.Action = v
}

// GetOrySessionToken returns the OrySessionToken field value
func (o *ContinueWithSetOrySessionToken) GetOrySessionToken() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.OrySessionToken
}

// GetOrySessionTokenOk returns a tuple with the OrySessionToken field value
// and a boolean to check if the value has been set.
func (o *ContinueWithSetOrySessionToken) GetOrySessionTokenOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.OrySessionToken, true
}

// SetOrySessionToken sets field value
func (o *ContinueWithSetOrySessionToken) SetOrySessionToken(v string) {
	o.OrySessionToken = v
}

func (o ContinueWithSetOrySessionToken) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["action"] = o.Action
	}
	if true {
		toSerialize["ory_session_token"] = o.OrySessionToken
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *ContinueWithSetOrySessionToken) UnmarshalJSON(bytes []byte) (err error) {
	varContinueWithSetOrySessionToken := _ContinueWithSetOrySessionToken{}

	if err = json.Unmarshal(bytes, &varContinueWithSetOrySessionToken); err == nil {
		*o = ContinueWithSetOrySessionToken(varContinueWithSetOrySessionToken)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "action")
		delete(additionalProperties, "ory_session_token")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableContinueWithSetOrySessionToken struct {
	value *ContinueWithSetOrySessionToken
	isSet bool
}

func (v NullableContinueWithSetOrySessionToken) Get() *ContinueWithSetOrySessionToken {
	return v.value
}

func (v *NullableContinueWithSetOrySessionToken) Set(val *ContinueWithSetOrySessionToken) {
	v.value = val
	v.isSet = true
}

func (v NullableContinueWithSetOrySessionToken) IsSet() bool {
	return v.isSet
}

func (v *NullableContinueWithSetOrySessionToken) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableContinueWithSetOrySessionToken(val *ContinueWithSetOrySessionToken) *NullableContinueWithSetOrySessionToken {
	return &NullableContinueWithSetOrySessionToken{value: val, isSet: true}
}

func (v NullableContinueWithSetOrySessionToken) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableContinueWithSetOrySessionToken) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


