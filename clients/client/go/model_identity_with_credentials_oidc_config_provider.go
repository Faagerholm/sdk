/*
Ory APIs

Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

API version: v1.14.1
Contact: support@ory.sh
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package client

import (
	"encoding/json"
	"fmt"
)

// checks if the IdentityWithCredentialsOidcConfigProvider type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &IdentityWithCredentialsOidcConfigProvider{}

// IdentityWithCredentialsOidcConfigProvider Create Identity and Import Social Sign In Credentials Configuration
type IdentityWithCredentialsOidcConfigProvider struct {
	// The OpenID Connect provider to link the subject to. Usually something like `google` or `github`.
	Provider string `json:"provider"`
	// The subject (`sub`) of the OpenID Connect connection. Usually the `sub` field of the ID Token.
	Subject string `json:"subject"`
	AdditionalProperties map[string]interface{}
}

type _IdentityWithCredentialsOidcConfigProvider IdentityWithCredentialsOidcConfigProvider

// NewIdentityWithCredentialsOidcConfigProvider instantiates a new IdentityWithCredentialsOidcConfigProvider object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewIdentityWithCredentialsOidcConfigProvider(provider string, subject string) *IdentityWithCredentialsOidcConfigProvider {
	this := IdentityWithCredentialsOidcConfigProvider{}
	this.Provider = provider
	this.Subject = subject
	return &this
}

// NewIdentityWithCredentialsOidcConfigProviderWithDefaults instantiates a new IdentityWithCredentialsOidcConfigProvider object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewIdentityWithCredentialsOidcConfigProviderWithDefaults() *IdentityWithCredentialsOidcConfigProvider {
	this := IdentityWithCredentialsOidcConfigProvider{}
	return &this
}

// GetProvider returns the Provider field value
func (o *IdentityWithCredentialsOidcConfigProvider) GetProvider() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Provider
}

// GetProviderOk returns a tuple with the Provider field value
// and a boolean to check if the value has been set.
func (o *IdentityWithCredentialsOidcConfigProvider) GetProviderOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Provider, true
}

// SetProvider sets field value
func (o *IdentityWithCredentialsOidcConfigProvider) SetProvider(v string) {
	o.Provider = v
}

// GetSubject returns the Subject field value
func (o *IdentityWithCredentialsOidcConfigProvider) GetSubject() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Subject
}

// GetSubjectOk returns a tuple with the Subject field value
// and a boolean to check if the value has been set.
func (o *IdentityWithCredentialsOidcConfigProvider) GetSubjectOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Subject, true
}

// SetSubject sets field value
func (o *IdentityWithCredentialsOidcConfigProvider) SetSubject(v string) {
	o.Subject = v
}

func (o IdentityWithCredentialsOidcConfigProvider) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o IdentityWithCredentialsOidcConfigProvider) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["provider"] = o.Provider
	toSerialize["subject"] = o.Subject

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return toSerialize, nil
}

func (o *IdentityWithCredentialsOidcConfigProvider) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"provider",
		"subject",
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

	varIdentityWithCredentialsOidcConfigProvider := _IdentityWithCredentialsOidcConfigProvider{}

	err = json.Unmarshal(data, &varIdentityWithCredentialsOidcConfigProvider)

	if err != nil {
		return err
	}

	*o = IdentityWithCredentialsOidcConfigProvider(varIdentityWithCredentialsOidcConfigProvider)

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(data, &additionalProperties); err == nil {
		delete(additionalProperties, "provider")
		delete(additionalProperties, "subject")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableIdentityWithCredentialsOidcConfigProvider struct {
	value *IdentityWithCredentialsOidcConfigProvider
	isSet bool
}

func (v NullableIdentityWithCredentialsOidcConfigProvider) Get() *IdentityWithCredentialsOidcConfigProvider {
	return v.value
}

func (v *NullableIdentityWithCredentialsOidcConfigProvider) Set(val *IdentityWithCredentialsOidcConfigProvider) {
	v.value = val
	v.isSet = true
}

func (v NullableIdentityWithCredentialsOidcConfigProvider) IsSet() bool {
	return v.isSet
}

func (v *NullableIdentityWithCredentialsOidcConfigProvider) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableIdentityWithCredentialsOidcConfigProvider(val *IdentityWithCredentialsOidcConfigProvider) *NullableIdentityWithCredentialsOidcConfigProvider {
	return &NullableIdentityWithCredentialsOidcConfigProvider{value: val, isSet: true}
}

func (v NullableIdentityWithCredentialsOidcConfigProvider) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableIdentityWithCredentialsOidcConfigProvider) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


