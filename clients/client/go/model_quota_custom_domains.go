/*
Ory APIs

Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

API version: v0.2.0-alpha.45
Contact: support@ory.sh
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package client

import (
	"encoding/json"
)

// QuotaCustomDomains struct for QuotaCustomDomains
type QuotaCustomDomains struct {
	AvailableDomains *int64 `json:"available_domains,omitempty"`
	CanUse *bool `json:"can_use,omitempty"`
	UsedDomains *int64 `json:"used_domains,omitempty"`
}

// NewQuotaCustomDomains instantiates a new QuotaCustomDomains object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewQuotaCustomDomains() *QuotaCustomDomains {
	this := QuotaCustomDomains{}
	return &this
}

// NewQuotaCustomDomainsWithDefaults instantiates a new QuotaCustomDomains object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewQuotaCustomDomainsWithDefaults() *QuotaCustomDomains {
	this := QuotaCustomDomains{}
	return &this
}

// GetAvailableDomains returns the AvailableDomains field value if set, zero value otherwise.
func (o *QuotaCustomDomains) GetAvailableDomains() int64 {
	if o == nil || o.AvailableDomains == nil {
		var ret int64
		return ret
	}
	return *o.AvailableDomains
}

// GetAvailableDomainsOk returns a tuple with the AvailableDomains field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QuotaCustomDomains) GetAvailableDomainsOk() (*int64, bool) {
	if o == nil || o.AvailableDomains == nil {
		return nil, false
	}
	return o.AvailableDomains, true
}

// HasAvailableDomains returns a boolean if a field has been set.
func (o *QuotaCustomDomains) HasAvailableDomains() bool {
	if o != nil && o.AvailableDomains != nil {
		return true
	}

	return false
}

// SetAvailableDomains gets a reference to the given int64 and assigns it to the AvailableDomains field.
func (o *QuotaCustomDomains) SetAvailableDomains(v int64) {
	o.AvailableDomains = &v
}

// GetCanUse returns the CanUse field value if set, zero value otherwise.
func (o *QuotaCustomDomains) GetCanUse() bool {
	if o == nil || o.CanUse == nil {
		var ret bool
		return ret
	}
	return *o.CanUse
}

// GetCanUseOk returns a tuple with the CanUse field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QuotaCustomDomains) GetCanUseOk() (*bool, bool) {
	if o == nil || o.CanUse == nil {
		return nil, false
	}
	return o.CanUse, true
}

// HasCanUse returns a boolean if a field has been set.
func (o *QuotaCustomDomains) HasCanUse() bool {
	if o != nil && o.CanUse != nil {
		return true
	}

	return false
}

// SetCanUse gets a reference to the given bool and assigns it to the CanUse field.
func (o *QuotaCustomDomains) SetCanUse(v bool) {
	o.CanUse = &v
}

// GetUsedDomains returns the UsedDomains field value if set, zero value otherwise.
func (o *QuotaCustomDomains) GetUsedDomains() int64 {
	if o == nil || o.UsedDomains == nil {
		var ret int64
		return ret
	}
	return *o.UsedDomains
}

// GetUsedDomainsOk returns a tuple with the UsedDomains field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QuotaCustomDomains) GetUsedDomainsOk() (*int64, bool) {
	if o == nil || o.UsedDomains == nil {
		return nil, false
	}
	return o.UsedDomains, true
}

// HasUsedDomains returns a boolean if a field has been set.
func (o *QuotaCustomDomains) HasUsedDomains() bool {
	if o != nil && o.UsedDomains != nil {
		return true
	}

	return false
}

// SetUsedDomains gets a reference to the given int64 and assigns it to the UsedDomains field.
func (o *QuotaCustomDomains) SetUsedDomains(v int64) {
	o.UsedDomains = &v
}

func (o QuotaCustomDomains) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.AvailableDomains != nil {
		toSerialize["available_domains"] = o.AvailableDomains
	}
	if o.CanUse != nil {
		toSerialize["can_use"] = o.CanUse
	}
	if o.UsedDomains != nil {
		toSerialize["used_domains"] = o.UsedDomains
	}
	return json.Marshal(toSerialize)
}

type NullableQuotaCustomDomains struct {
	value *QuotaCustomDomains
	isSet bool
}

func (v NullableQuotaCustomDomains) Get() *QuotaCustomDomains {
	return v.value
}

func (v *NullableQuotaCustomDomains) Set(val *QuotaCustomDomains) {
	v.value = val
	v.isSet = true
}

func (v NullableQuotaCustomDomains) IsSet() bool {
	return v.isSet
}

func (v *NullableQuotaCustomDomains) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableQuotaCustomDomains(val *QuotaCustomDomains) *NullableQuotaCustomDomains {
	return &NullableQuotaCustomDomains{value: val, isSet: true}
}

func (v NullableQuotaCustomDomains) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableQuotaCustomDomains) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


