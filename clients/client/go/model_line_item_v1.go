/*
Ory APIs

Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

API version: v1.14.2
Contact: support@ory.sh
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package client

import (
	"encoding/json"
)

// checks if the LineItemV1 type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &LineItemV1{}

// LineItemV1 struct for LineItemV1
type LineItemV1 struct {
	AmountInCent *int64 `json:"amount_in_cent,omitempty"`
	Description *string `json:"description,omitempty"`
	// Each line item can have sub-items to create a hierarchy.
	Items []LineItemV1 `json:"items,omitempty"`
	Quantity *int64 `json:"quantity,omitempty"`
	Title *string `json:"title,omitempty"`
	UnitPrice *string `json:"unit_price,omitempty"`
	AdditionalProperties map[string]interface{}
}

type _LineItemV1 LineItemV1

// NewLineItemV1 instantiates a new LineItemV1 object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewLineItemV1() *LineItemV1 {
	this := LineItemV1{}
	return &this
}

// NewLineItemV1WithDefaults instantiates a new LineItemV1 object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewLineItemV1WithDefaults() *LineItemV1 {
	this := LineItemV1{}
	return &this
}

// GetAmountInCent returns the AmountInCent field value if set, zero value otherwise.
func (o *LineItemV1) GetAmountInCent() int64 {
	if o == nil || IsNil(o.AmountInCent) {
		var ret int64
		return ret
	}
	return *o.AmountInCent
}

// GetAmountInCentOk returns a tuple with the AmountInCent field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *LineItemV1) GetAmountInCentOk() (*int64, bool) {
	if o == nil || IsNil(o.AmountInCent) {
		return nil, false
	}
	return o.AmountInCent, true
}

// HasAmountInCent returns a boolean if a field has been set.
func (o *LineItemV1) HasAmountInCent() bool {
	if o != nil && !IsNil(o.AmountInCent) {
		return true
	}

	return false
}

// SetAmountInCent gets a reference to the given int64 and assigns it to the AmountInCent field.
func (o *LineItemV1) SetAmountInCent(v int64) {
	o.AmountInCent = &v
}

// GetDescription returns the Description field value if set, zero value otherwise.
func (o *LineItemV1) GetDescription() string {
	if o == nil || IsNil(o.Description) {
		var ret string
		return ret
	}
	return *o.Description
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *LineItemV1) GetDescriptionOk() (*string, bool) {
	if o == nil || IsNil(o.Description) {
		return nil, false
	}
	return o.Description, true
}

// HasDescription returns a boolean if a field has been set.
func (o *LineItemV1) HasDescription() bool {
	if o != nil && !IsNil(o.Description) {
		return true
	}

	return false
}

// SetDescription gets a reference to the given string and assigns it to the Description field.
func (o *LineItemV1) SetDescription(v string) {
	o.Description = &v
}

// GetItems returns the Items field value if set, zero value otherwise.
func (o *LineItemV1) GetItems() []LineItemV1 {
	if o == nil || IsNil(o.Items) {
		var ret []LineItemV1
		return ret
	}
	return o.Items
}

// GetItemsOk returns a tuple with the Items field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *LineItemV1) GetItemsOk() ([]LineItemV1, bool) {
	if o == nil || IsNil(o.Items) {
		return nil, false
	}
	return o.Items, true
}

// HasItems returns a boolean if a field has been set.
func (o *LineItemV1) HasItems() bool {
	if o != nil && !IsNil(o.Items) {
		return true
	}

	return false
}

// SetItems gets a reference to the given []LineItemV1 and assigns it to the Items field.
func (o *LineItemV1) SetItems(v []LineItemV1) {
	o.Items = v
}

// GetQuantity returns the Quantity field value if set, zero value otherwise.
func (o *LineItemV1) GetQuantity() int64 {
	if o == nil || IsNil(o.Quantity) {
		var ret int64
		return ret
	}
	return *o.Quantity
}

// GetQuantityOk returns a tuple with the Quantity field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *LineItemV1) GetQuantityOk() (*int64, bool) {
	if o == nil || IsNil(o.Quantity) {
		return nil, false
	}
	return o.Quantity, true
}

// HasQuantity returns a boolean if a field has been set.
func (o *LineItemV1) HasQuantity() bool {
	if o != nil && !IsNil(o.Quantity) {
		return true
	}

	return false
}

// SetQuantity gets a reference to the given int64 and assigns it to the Quantity field.
func (o *LineItemV1) SetQuantity(v int64) {
	o.Quantity = &v
}

// GetTitle returns the Title field value if set, zero value otherwise.
func (o *LineItemV1) GetTitle() string {
	if o == nil || IsNil(o.Title) {
		var ret string
		return ret
	}
	return *o.Title
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *LineItemV1) GetTitleOk() (*string, bool) {
	if o == nil || IsNil(o.Title) {
		return nil, false
	}
	return o.Title, true
}

// HasTitle returns a boolean if a field has been set.
func (o *LineItemV1) HasTitle() bool {
	if o != nil && !IsNil(o.Title) {
		return true
	}

	return false
}

// SetTitle gets a reference to the given string and assigns it to the Title field.
func (o *LineItemV1) SetTitle(v string) {
	o.Title = &v
}

// GetUnitPrice returns the UnitPrice field value if set, zero value otherwise.
func (o *LineItemV1) GetUnitPrice() string {
	if o == nil || IsNil(o.UnitPrice) {
		var ret string
		return ret
	}
	return *o.UnitPrice
}

// GetUnitPriceOk returns a tuple with the UnitPrice field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *LineItemV1) GetUnitPriceOk() (*string, bool) {
	if o == nil || IsNil(o.UnitPrice) {
		return nil, false
	}
	return o.UnitPrice, true
}

// HasUnitPrice returns a boolean if a field has been set.
func (o *LineItemV1) HasUnitPrice() bool {
	if o != nil && !IsNil(o.UnitPrice) {
		return true
	}

	return false
}

// SetUnitPrice gets a reference to the given string and assigns it to the UnitPrice field.
func (o *LineItemV1) SetUnitPrice(v string) {
	o.UnitPrice = &v
}

func (o LineItemV1) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o LineItemV1) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.AmountInCent) {
		toSerialize["amount_in_cent"] = o.AmountInCent
	}
	if !IsNil(o.Description) {
		toSerialize["description"] = o.Description
	}
	if !IsNil(o.Items) {
		toSerialize["items"] = o.Items
	}
	if !IsNil(o.Quantity) {
		toSerialize["quantity"] = o.Quantity
	}
	if !IsNil(o.Title) {
		toSerialize["title"] = o.Title
	}
	if !IsNil(o.UnitPrice) {
		toSerialize["unit_price"] = o.UnitPrice
	}

	for key, value := range o.AdditionalProperties {
		toSerialize[key] = value
	}

	return toSerialize, nil
}

func (o *LineItemV1) UnmarshalJSON(data []byte) (err error) {
	varLineItemV1 := _LineItemV1{}

	err = json.Unmarshal(data, &varLineItemV1)

	if err != nil {
		return err
	}

	*o = LineItemV1(varLineItemV1)

	additionalProperties := make(map[string]interface{})

	if err = json.Unmarshal(data, &additionalProperties); err == nil {
		delete(additionalProperties, "amount_in_cent")
		delete(additionalProperties, "description")
		delete(additionalProperties, "items")
		delete(additionalProperties, "quantity")
		delete(additionalProperties, "title")
		delete(additionalProperties, "unit_price")
		o.AdditionalProperties = additionalProperties
	}

	return err
}

type NullableLineItemV1 struct {
	value *LineItemV1
	isSet bool
}

func (v NullableLineItemV1) Get() *LineItemV1 {
	return v.value
}

func (v *NullableLineItemV1) Set(val *LineItemV1) {
	v.value = val
	v.isSet = true
}

func (v NullableLineItemV1) IsSet() bool {
	return v.isSet
}

func (v *NullableLineItemV1) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableLineItemV1(val *LineItemV1) *NullableLineItemV1 {
	return &NullableLineItemV1{value: val, isSet: true}
}

func (v NullableLineItemV1) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableLineItemV1) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


