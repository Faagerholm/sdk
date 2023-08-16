/*
Ory APIs

Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

API version: v1.1.47
Contact: support@ory.sh
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package client

import (
	"encoding/json"
)

// PlanDetails struct for PlanDetails
type PlanDetails struct {
	// BaseFeeMonthly is the monthly base fee for the plan.
	BaseFeeMonthly int64 `json:"base_fee_monthly"`
	// BaseFeeYearly is the yearly base fee for the plan.
	BaseFeeYearly int64 `json:"base_fee_yearly"`
	// Custom is true if the plan is custom. This means it will be hidden from the pricing page.
	Custom bool `json:"custom"`
	// Description is the description of the plan.
	Description string `json:"description"`
	// Features are the feature definitions included in the plan.
	Features map[string]GenericUsage `json:"features"`
	// Name is the name of the plan.
	Name string `json:"name"`
	// Version is the version of the plan. The combination of `name@version` must be unique.
	Version int64 `json:"version"`
	AdditionalProperties map[string]interface{}
}

type _PlanDetails PlanDetails

// NewPlanDetails instantiates a new PlanDetails object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPlanDetails(baseFeeMonthly int64, baseFeeYearly int64, custom bool, description string, features map[string]GenericUsage, name string, version int64) *PlanDetails {
	this := PlanDetails{}
	this.BaseFeeMonthly = baseFeeMonthly
	this.BaseFeeYearly = baseFeeYearly
	this.Custom = custom
	this.Description = description
	this.Features = features
	this.Name = name
	this.Version = version
	return &this
}

// NewPlanDetailsWithDefaults instantiates a new PlanDetails object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPlanDetailsWithDefaults() *PlanDetails {
	this := PlanDetails{}
	return &this
}

// GetBaseFeeMonthly returns the BaseFeeMonthly field value
func (o *PlanDetails) GetBaseFeeMonthly() int64 {
	if o == nil {
		var ret int64
		return ret
	}

	return o.BaseFeeMonthly
}

// GetBaseFeeMonthlyOk returns a tuple with the BaseFeeMonthly field value
// and a boolean to check if the value has been set.
func (o *PlanDetails) GetBaseFeeMonthlyOk() (*int64, bool) {
	if o == nil {
		return nil, false
	}
	return &o.BaseFeeMonthly, true
}

// SetBaseFeeMonthly sets field value
func (o *PlanDetails) SetBaseFeeMonthly(v int64) {
	o.BaseFeeMonthly = v
}

// GetBaseFeeYearly returns the BaseFeeYearly field value
func (o *PlanDetails) GetBaseFeeYearly() int64 {
	if o == nil {
		var ret int64
		return ret
	}

	return o.BaseFeeYearly
}

// GetBaseFeeYearlyOk returns a tuple with the BaseFeeYearly field value
// and a boolean to check if the value has been set.
func (o *PlanDetails) GetBaseFeeYearlyOk() (*int64, bool) {
	if o == nil {
		return nil, false
	}
	return &o.BaseFeeYearly, true
}

// SetBaseFeeYearly sets field value
func (o *PlanDetails) SetBaseFeeYearly(v int64) {
	o.BaseFeeYearly = v
}

// GetCustom returns the Custom field value
func (o *PlanDetails) GetCustom() bool {
	if o == nil {
		var ret bool
		return ret
	}

	return o.Custom
}

// GetCustomOk returns a tuple with the Custom field value
// and a boolean to check if the value has been set.
func (o *PlanDetails) GetCustomOk() (*bool, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Custom, true
}

// SetCustom sets field value
func (o *PlanDetails) SetCustom(v bool) {
	o.Custom = v
}

// GetDescription returns the Description field value
func (o *PlanDetails) GetDescription() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Description
}

// GetDescriptionOk returns a tuple with the Description field value
// and a boolean to check if the value has been set.
func (o *PlanDetails) GetDescriptionOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Description, true
}

// SetDescription sets field value
func (o *PlanDetails) SetDescription(v string) {
	o.Description = v
}

// GetFeatures returns the Features field value
func (o *PlanDetails) GetFeatures() map[string]GenericUsage {
	if o == nil {
		var ret map[string]GenericUsage
		return ret
	}

	return o.Features
}

// GetFeaturesOk returns a tuple with the Features field value
// and a boolean to check if the value has been set.
func (o *PlanDetails) GetFeaturesOk() (*map[string]GenericUsage, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Features, true
}

// SetFeatures sets field value
func (o *PlanDetails) SetFeatures(v map[string]GenericUsage) {
	o.Features = v
}

// GetName returns the Name field value
func (o *PlanDetails) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *PlanDetails) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *PlanDetails) SetName(v string) {
	o.Name = v
}

// GetVersion returns the Version field value
func (o *PlanDetails) GetVersion() int64 {
	if o == nil {
		var ret int64
		return ret
	}

	return o.Version
}

// GetVersionOk returns a tuple with the Version field value
// and a boolean to check if the value has been set.
func (o *PlanDetails) GetVersionOk() (*int64, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Version, true
}

// SetVersion sets field value
func (o *PlanDetails) SetVersion(v int64) {
	o.Version = v
}

func (o PlanDetails) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["base_fee_monthly"] = o.BaseFeeMonthly
	}
	if true {
		toSerialize["base_fee_yearly"] = o.BaseFeeYearly
	}
	if true {
		toSerialize["custom"] = o.Custom
	}
	if true {
		toSerialize["description"] = o.Description
	}
	if true {
		toSerialize["features"] = o.Features
	}
	if true {
		toSerialize["name"] = o.Name
	}
	if true {
		toSerialize["version"] = o.Version
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return json.Marshal(toSerialize)
}

func (o *PlanDetails) UnmarshalJSON(bytes []byte) (err error) {
	varPlanDetails := _PlanDetails{}

	if err = json.Unmarshal(bytes, &varPlanDetails); err == nil {
		*o = PlanDetails(varPlanDetails)
	}

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(bytes, &additionalProperties); err == nil {
		delete(additionalProperties, "base_fee_monthly")
		delete(additionalProperties, "base_fee_yearly")
		delete(additionalProperties, "custom")
		delete(additionalProperties, "description")
		delete(additionalProperties, "features")
		delete(additionalProperties, "name")
		delete(additionalProperties, "version")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullablePlanDetails struct {
	value *PlanDetails
	isSet bool
}

func (v NullablePlanDetails) Get() *PlanDetails {
	return v.value
}

func (v *NullablePlanDetails) Set(val *PlanDetails) {
	v.value = val
	v.isSet = true
}

func (v NullablePlanDetails) IsSet() bool {
	return v.isSet
}

func (v *NullablePlanDetails) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePlanDetails(val *PlanDetails) *NullablePlanDetails {
	return &NullablePlanDetails{value: val, isSet: true}
}

func (v NullablePlanDetails) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePlanDetails) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


