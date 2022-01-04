/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * API version: v0.0.1-alpha.36
 * Contact: support@ory.sh
 */

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package client

import (
	"encoding/json"
)

// ProjectPatch struct for ProjectPatch
type ProjectPatch struct {
	// URL of Project API  In the future will allow to override Kratos project URL. If set, error is returned. If left empty our hosted URL is used
	ApiUrl *string `json:"api_url,omitempty"`
	// URL where your application is available.  Your users will be redirected to this URL when they successfully complete a login, logout, verification, recovery, or registration flow. More fine-grained redirection patterns are available for the individual flows (login, registration, ...).  If left empty, our hosted URL will be used instead. It contains technical information on the identities and is useful when developing a new project or trying out Ory Cloud.
	ApplicationUrl *string `json:"application_url,omitempty"`
	// Default Identity Schema URL  This represents your Ory Kratos Default Identity Schema. It is your identity's default schema. This allows setting custom fields such as \"address\", specifying whether you want to log in using email or a username, and more. For more information on this topic, please check out the identity documentation.  If KratosCustomSchemaID is also added to the payload, it will be preferred and replace the value of DefaultIdentitySchemaURL set by the client.  The value of this field can be either any \"https://\" URL - for example a file hosted at GitHub, or a `preset://`-prefixed string.  Available presets are:  preset://email preset://username preset://basic preset://blank
	DefaultIdentitySchemaUrl *string `json:"default_identity_schema_url,omitempty"`
	// Self-Service Error UI URL  Sets the UI URL for the error UI. If left empty, this will use Ory's hosted pages.
	ErrorUiUrl string `json:"error_ui_url"`
	// The Custom Schema ID  The custom schema ID is a preferred field over DefaultIdentitySchemaURL, meaning it will override the DefaultIdentitySchemaURL with the custom schema's URL instead of accepting it from the client-side. Once this field is set the given custom schema will be associated with this project.
	KratosCustomSchemaId *string `json:"kratos_custom_schema_id,omitempty"`
	// Self-Service Login UI URL  Sets the UI URL for the login UI. If left empty, this will use Ory's hosted pages.
	LoginUiUrl string `json:"login_ui_url"`
	LookupSecret ProjectLookupSecretConfig `json:"lookup_secret"`
	// The project name.  Helps you identify your project.  in: body
	Name *string `json:"name,omitempty"`
	Password ProjectPasswordConfig `json:"password"`
	Recovery ProjectRecoveryConfig `json:"recovery"`
	// Self-Service Login UI URL  Sets the UI URL for the recovery UI. If left empty, this will use Ory's hosted pages.
	RecoveryUiUrl string `json:"recovery_ui_url"`
	RedirectionConfig *RedirectionConfig `json:"redirection_config,omitempty"`
	// Self-Service Login UI URL  Sets the UI URL for the registration UI. If left empty, this will use Ory's hosted pages.
	RegistrationUiUrl string `json:"registration_ui_url"`
	// Issue Session after Sign Up  If set to true, users will receive a session after they successfully signed up. Enabling this option allows account enumeration during registration flows. Read more: https://www.ory.sh/kratos/docs/self-service/flows/user-registration#successful-registration
	SessionAfterSignUp bool `json:"session_after_sign_up"`
	// Enable Soft 2FA for Login Sessions
	SessionSoft2fa bool `json:"session_soft_2fa"`
	// Duration in Seconds of how long a Session is Privileged  Defines how long a session is considered privileged in seconds. If the session's authenticated_at is older than the value specified here, the user needs to re-authenticate to perform certain actions (e.g. password change).
	SettingsPrivilegedSessionMaxAgeSeconds int64 `json:"settings_privileged_session_max_age_seconds"`
	// Enable Soft 2FA for Self-Service Settings Flows
	SettingsSoft2fa bool `json:"settings_soft_2fa"`
	// Self-Service Settings UI URL  Sets the UI URL for the settings UI. If left empty, this will use Ory's hosted pages.
	SettingsUiUrl string `json:"settings_ui_url"`
	Totp ProjectTotpConfig `json:"totp"`
	Verification ProjectVerificationConfig `json:"verification"`
	// Self-Service Login UI URL  Sets the UI URL for the verification UI. If left empty, this will use Ory's hosted pages.
	VerificationUiUrl string `json:"verification_ui_url"`
	Webauthn ProjectWebAuthnConfig `json:"webauthn"`
}

// NewProjectPatch instantiates a new ProjectPatch object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewProjectPatch(errorUiUrl string, loginUiUrl string, lookupSecret ProjectLookupSecretConfig, password ProjectPasswordConfig, recovery ProjectRecoveryConfig, recoveryUiUrl string, registrationUiUrl string, sessionAfterSignUp bool, sessionSoft2fa bool, settingsPrivilegedSessionMaxAgeSeconds int64, settingsSoft2fa bool, settingsUiUrl string, totp ProjectTotpConfig, verification ProjectVerificationConfig, verificationUiUrl string, webauthn ProjectWebAuthnConfig) *ProjectPatch {
	this := ProjectPatch{}
	this.ErrorUiUrl = errorUiUrl
	this.LoginUiUrl = loginUiUrl
	this.LookupSecret = lookupSecret
	this.Password = password
	this.Recovery = recovery
	this.RecoveryUiUrl = recoveryUiUrl
	this.RegistrationUiUrl = registrationUiUrl
	this.SessionAfterSignUp = sessionAfterSignUp
	this.SessionSoft2fa = sessionSoft2fa
	this.SettingsPrivilegedSessionMaxAgeSeconds = settingsPrivilegedSessionMaxAgeSeconds
	this.SettingsSoft2fa = settingsSoft2fa
	this.SettingsUiUrl = settingsUiUrl
	this.Totp = totp
	this.Verification = verification
	this.VerificationUiUrl = verificationUiUrl
	this.Webauthn = webauthn
	return &this
}

// NewProjectPatchWithDefaults instantiates a new ProjectPatch object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewProjectPatchWithDefaults() *ProjectPatch {
	this := ProjectPatch{}
	return &this
}

// GetApiUrl returns the ApiUrl field value if set, zero value otherwise.
func (o *ProjectPatch) GetApiUrl() string {
	if o == nil || o.ApiUrl == nil {
		var ret string
		return ret
	}
	return *o.ApiUrl
}

// GetApiUrlOk returns a tuple with the ApiUrl field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetApiUrlOk() (*string, bool) {
	if o == nil || o.ApiUrl == nil {
		return nil, false
	}
	return o.ApiUrl, true
}

// HasApiUrl returns a boolean if a field has been set.
func (o *ProjectPatch) HasApiUrl() bool {
	if o != nil && o.ApiUrl != nil {
		return true
	}

	return false
}

// SetApiUrl gets a reference to the given string and assigns it to the ApiUrl field.
func (o *ProjectPatch) SetApiUrl(v string) {
	o.ApiUrl = &v
}

// GetApplicationUrl returns the ApplicationUrl field value if set, zero value otherwise.
func (o *ProjectPatch) GetApplicationUrl() string {
	if o == nil || o.ApplicationUrl == nil {
		var ret string
		return ret
	}
	return *o.ApplicationUrl
}

// GetApplicationUrlOk returns a tuple with the ApplicationUrl field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetApplicationUrlOk() (*string, bool) {
	if o == nil || o.ApplicationUrl == nil {
		return nil, false
	}
	return o.ApplicationUrl, true
}

// HasApplicationUrl returns a boolean if a field has been set.
func (o *ProjectPatch) HasApplicationUrl() bool {
	if o != nil && o.ApplicationUrl != nil {
		return true
	}

	return false
}

// SetApplicationUrl gets a reference to the given string and assigns it to the ApplicationUrl field.
func (o *ProjectPatch) SetApplicationUrl(v string) {
	o.ApplicationUrl = &v
}

// GetDefaultIdentitySchemaUrl returns the DefaultIdentitySchemaUrl field value if set, zero value otherwise.
func (o *ProjectPatch) GetDefaultIdentitySchemaUrl() string {
	if o == nil || o.DefaultIdentitySchemaUrl == nil {
		var ret string
		return ret
	}
	return *o.DefaultIdentitySchemaUrl
}

// GetDefaultIdentitySchemaUrlOk returns a tuple with the DefaultIdentitySchemaUrl field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetDefaultIdentitySchemaUrlOk() (*string, bool) {
	if o == nil || o.DefaultIdentitySchemaUrl == nil {
		return nil, false
	}
	return o.DefaultIdentitySchemaUrl, true
}

// HasDefaultIdentitySchemaUrl returns a boolean if a field has been set.
func (o *ProjectPatch) HasDefaultIdentitySchemaUrl() bool {
	if o != nil && o.DefaultIdentitySchemaUrl != nil {
		return true
	}

	return false
}

// SetDefaultIdentitySchemaUrl gets a reference to the given string and assigns it to the DefaultIdentitySchemaUrl field.
func (o *ProjectPatch) SetDefaultIdentitySchemaUrl(v string) {
	o.DefaultIdentitySchemaUrl = &v
}

// GetErrorUiUrl returns the ErrorUiUrl field value
func (o *ProjectPatch) GetErrorUiUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ErrorUiUrl
}

// GetErrorUiUrlOk returns a tuple with the ErrorUiUrl field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetErrorUiUrlOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.ErrorUiUrl, true
}

// SetErrorUiUrl sets field value
func (o *ProjectPatch) SetErrorUiUrl(v string) {
	o.ErrorUiUrl = v
}

// GetKratosCustomSchemaId returns the KratosCustomSchemaId field value if set, zero value otherwise.
func (o *ProjectPatch) GetKratosCustomSchemaId() string {
	if o == nil || o.KratosCustomSchemaId == nil {
		var ret string
		return ret
	}
	return *o.KratosCustomSchemaId
}

// GetKratosCustomSchemaIdOk returns a tuple with the KratosCustomSchemaId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetKratosCustomSchemaIdOk() (*string, bool) {
	if o == nil || o.KratosCustomSchemaId == nil {
		return nil, false
	}
	return o.KratosCustomSchemaId, true
}

// HasKratosCustomSchemaId returns a boolean if a field has been set.
func (o *ProjectPatch) HasKratosCustomSchemaId() bool {
	if o != nil && o.KratosCustomSchemaId != nil {
		return true
	}

	return false
}

// SetKratosCustomSchemaId gets a reference to the given string and assigns it to the KratosCustomSchemaId field.
func (o *ProjectPatch) SetKratosCustomSchemaId(v string) {
	o.KratosCustomSchemaId = &v
}

// GetLoginUiUrl returns the LoginUiUrl field value
func (o *ProjectPatch) GetLoginUiUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.LoginUiUrl
}

// GetLoginUiUrlOk returns a tuple with the LoginUiUrl field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetLoginUiUrlOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.LoginUiUrl, true
}

// SetLoginUiUrl sets field value
func (o *ProjectPatch) SetLoginUiUrl(v string) {
	o.LoginUiUrl = v
}

// GetLookupSecret returns the LookupSecret field value
func (o *ProjectPatch) GetLookupSecret() ProjectLookupSecretConfig {
	if o == nil {
		var ret ProjectLookupSecretConfig
		return ret
	}

	return o.LookupSecret
}

// GetLookupSecretOk returns a tuple with the LookupSecret field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetLookupSecretOk() (*ProjectLookupSecretConfig, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.LookupSecret, true
}

// SetLookupSecret sets field value
func (o *ProjectPatch) SetLookupSecret(v ProjectLookupSecretConfig) {
	o.LookupSecret = v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *ProjectPatch) GetName() string {
	if o == nil || o.Name == nil {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetNameOk() (*string, bool) {
	if o == nil || o.Name == nil {
		return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *ProjectPatch) HasName() bool {
	if o != nil && o.Name != nil {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *ProjectPatch) SetName(v string) {
	o.Name = &v
}

// GetPassword returns the Password field value
func (o *ProjectPatch) GetPassword() ProjectPasswordConfig {
	if o == nil {
		var ret ProjectPasswordConfig
		return ret
	}

	return o.Password
}

// GetPasswordOk returns a tuple with the Password field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetPasswordOk() (*ProjectPasswordConfig, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Password, true
}

// SetPassword sets field value
func (o *ProjectPatch) SetPassword(v ProjectPasswordConfig) {
	o.Password = v
}

// GetRecovery returns the Recovery field value
func (o *ProjectPatch) GetRecovery() ProjectRecoveryConfig {
	if o == nil {
		var ret ProjectRecoveryConfig
		return ret
	}

	return o.Recovery
}

// GetRecoveryOk returns a tuple with the Recovery field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetRecoveryOk() (*ProjectRecoveryConfig, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Recovery, true
}

// SetRecovery sets field value
func (o *ProjectPatch) SetRecovery(v ProjectRecoveryConfig) {
	o.Recovery = v
}

// GetRecoveryUiUrl returns the RecoveryUiUrl field value
func (o *ProjectPatch) GetRecoveryUiUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.RecoveryUiUrl
}

// GetRecoveryUiUrlOk returns a tuple with the RecoveryUiUrl field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetRecoveryUiUrlOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.RecoveryUiUrl, true
}

// SetRecoveryUiUrl sets field value
func (o *ProjectPatch) SetRecoveryUiUrl(v string) {
	o.RecoveryUiUrl = v
}

// GetRedirectionConfig returns the RedirectionConfig field value if set, zero value otherwise.
func (o *ProjectPatch) GetRedirectionConfig() RedirectionConfig {
	if o == nil || o.RedirectionConfig == nil {
		var ret RedirectionConfig
		return ret
	}
	return *o.RedirectionConfig
}

// GetRedirectionConfigOk returns a tuple with the RedirectionConfig field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetRedirectionConfigOk() (*RedirectionConfig, bool) {
	if o == nil || o.RedirectionConfig == nil {
		return nil, false
	}
	return o.RedirectionConfig, true
}

// HasRedirectionConfig returns a boolean if a field has been set.
func (o *ProjectPatch) HasRedirectionConfig() bool {
	if o != nil && o.RedirectionConfig != nil {
		return true
	}

	return false
}

// SetRedirectionConfig gets a reference to the given RedirectionConfig and assigns it to the RedirectionConfig field.
func (o *ProjectPatch) SetRedirectionConfig(v RedirectionConfig) {
	o.RedirectionConfig = &v
}

// GetRegistrationUiUrl returns the RegistrationUiUrl field value
func (o *ProjectPatch) GetRegistrationUiUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.RegistrationUiUrl
}

// GetRegistrationUiUrlOk returns a tuple with the RegistrationUiUrl field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetRegistrationUiUrlOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.RegistrationUiUrl, true
}

// SetRegistrationUiUrl sets field value
func (o *ProjectPatch) SetRegistrationUiUrl(v string) {
	o.RegistrationUiUrl = v
}

// GetSessionAfterSignUp returns the SessionAfterSignUp field value
func (o *ProjectPatch) GetSessionAfterSignUp() bool {
	if o == nil {
		var ret bool
		return ret
	}

	return o.SessionAfterSignUp
}

// GetSessionAfterSignUpOk returns a tuple with the SessionAfterSignUp field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetSessionAfterSignUpOk() (*bool, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.SessionAfterSignUp, true
}

// SetSessionAfterSignUp sets field value
func (o *ProjectPatch) SetSessionAfterSignUp(v bool) {
	o.SessionAfterSignUp = v
}

// GetSessionSoft2fa returns the SessionSoft2fa field value
func (o *ProjectPatch) GetSessionSoft2fa() bool {
	if o == nil {
		var ret bool
		return ret
	}

	return o.SessionSoft2fa
}

// GetSessionSoft2faOk returns a tuple with the SessionSoft2fa field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetSessionSoft2faOk() (*bool, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.SessionSoft2fa, true
}

// SetSessionSoft2fa sets field value
func (o *ProjectPatch) SetSessionSoft2fa(v bool) {
	o.SessionSoft2fa = v
}

// GetSettingsPrivilegedSessionMaxAgeSeconds returns the SettingsPrivilegedSessionMaxAgeSeconds field value
func (o *ProjectPatch) GetSettingsPrivilegedSessionMaxAgeSeconds() int64 {
	if o == nil {
		var ret int64
		return ret
	}

	return o.SettingsPrivilegedSessionMaxAgeSeconds
}

// GetSettingsPrivilegedSessionMaxAgeSecondsOk returns a tuple with the SettingsPrivilegedSessionMaxAgeSeconds field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetSettingsPrivilegedSessionMaxAgeSecondsOk() (*int64, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.SettingsPrivilegedSessionMaxAgeSeconds, true
}

// SetSettingsPrivilegedSessionMaxAgeSeconds sets field value
func (o *ProjectPatch) SetSettingsPrivilegedSessionMaxAgeSeconds(v int64) {
	o.SettingsPrivilegedSessionMaxAgeSeconds = v
}

// GetSettingsSoft2fa returns the SettingsSoft2fa field value
func (o *ProjectPatch) GetSettingsSoft2fa() bool {
	if o == nil {
		var ret bool
		return ret
	}

	return o.SettingsSoft2fa
}

// GetSettingsSoft2faOk returns a tuple with the SettingsSoft2fa field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetSettingsSoft2faOk() (*bool, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.SettingsSoft2fa, true
}

// SetSettingsSoft2fa sets field value
func (o *ProjectPatch) SetSettingsSoft2fa(v bool) {
	o.SettingsSoft2fa = v
}

// GetSettingsUiUrl returns the SettingsUiUrl field value
func (o *ProjectPatch) GetSettingsUiUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.SettingsUiUrl
}

// GetSettingsUiUrlOk returns a tuple with the SettingsUiUrl field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetSettingsUiUrlOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.SettingsUiUrl, true
}

// SetSettingsUiUrl sets field value
func (o *ProjectPatch) SetSettingsUiUrl(v string) {
	o.SettingsUiUrl = v
}

// GetTotp returns the Totp field value
func (o *ProjectPatch) GetTotp() ProjectTotpConfig {
	if o == nil {
		var ret ProjectTotpConfig
		return ret
	}

	return o.Totp
}

// GetTotpOk returns a tuple with the Totp field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetTotpOk() (*ProjectTotpConfig, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Totp, true
}

// SetTotp sets field value
func (o *ProjectPatch) SetTotp(v ProjectTotpConfig) {
	o.Totp = v
}

// GetVerification returns the Verification field value
func (o *ProjectPatch) GetVerification() ProjectVerificationConfig {
	if o == nil {
		var ret ProjectVerificationConfig
		return ret
	}

	return o.Verification
}

// GetVerificationOk returns a tuple with the Verification field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetVerificationOk() (*ProjectVerificationConfig, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Verification, true
}

// SetVerification sets field value
func (o *ProjectPatch) SetVerification(v ProjectVerificationConfig) {
	o.Verification = v
}

// GetVerificationUiUrl returns the VerificationUiUrl field value
func (o *ProjectPatch) GetVerificationUiUrl() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.VerificationUiUrl
}

// GetVerificationUiUrlOk returns a tuple with the VerificationUiUrl field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetVerificationUiUrlOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.VerificationUiUrl, true
}

// SetVerificationUiUrl sets field value
func (o *ProjectPatch) SetVerificationUiUrl(v string) {
	o.VerificationUiUrl = v
}

// GetWebauthn returns the Webauthn field value
func (o *ProjectPatch) GetWebauthn() ProjectWebAuthnConfig {
	if o == nil {
		var ret ProjectWebAuthnConfig
		return ret
	}

	return o.Webauthn
}

// GetWebauthnOk returns a tuple with the Webauthn field value
// and a boolean to check if the value has been set.
func (o *ProjectPatch) GetWebauthnOk() (*ProjectWebAuthnConfig, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Webauthn, true
}

// SetWebauthn sets field value
func (o *ProjectPatch) SetWebauthn(v ProjectWebAuthnConfig) {
	o.Webauthn = v
}

func (o ProjectPatch) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.ApiUrl != nil {
		toSerialize["api_url"] = o.ApiUrl
	}
	if o.ApplicationUrl != nil {
		toSerialize["application_url"] = o.ApplicationUrl
	}
	if o.DefaultIdentitySchemaUrl != nil {
		toSerialize["default_identity_schema_url"] = o.DefaultIdentitySchemaUrl
	}
	if true {
		toSerialize["error_ui_url"] = o.ErrorUiUrl
	}
	if o.KratosCustomSchemaId != nil {
		toSerialize["kratos_custom_schema_id"] = o.KratosCustomSchemaId
	}
	if true {
		toSerialize["login_ui_url"] = o.LoginUiUrl
	}
	if true {
		toSerialize["lookup_secret"] = o.LookupSecret
	}
	if o.Name != nil {
		toSerialize["name"] = o.Name
	}
	if true {
		toSerialize["password"] = o.Password
	}
	if true {
		toSerialize["recovery"] = o.Recovery
	}
	if true {
		toSerialize["recovery_ui_url"] = o.RecoveryUiUrl
	}
	if o.RedirectionConfig != nil {
		toSerialize["redirection_config"] = o.RedirectionConfig
	}
	if true {
		toSerialize["registration_ui_url"] = o.RegistrationUiUrl
	}
	if true {
		toSerialize["session_after_sign_up"] = o.SessionAfterSignUp
	}
	if true {
		toSerialize["session_soft_2fa"] = o.SessionSoft2fa
	}
	if true {
		toSerialize["settings_privileged_session_max_age_seconds"] = o.SettingsPrivilegedSessionMaxAgeSeconds
	}
	if true {
		toSerialize["settings_soft_2fa"] = o.SettingsSoft2fa
	}
	if true {
		toSerialize["settings_ui_url"] = o.SettingsUiUrl
	}
	if true {
		toSerialize["totp"] = o.Totp
	}
	if true {
		toSerialize["verification"] = o.Verification
	}
	if true {
		toSerialize["verification_ui_url"] = o.VerificationUiUrl
	}
	if true {
		toSerialize["webauthn"] = o.Webauthn
	}
	return json.Marshal(toSerialize)
}

type NullableProjectPatch struct {
	value *ProjectPatch
	isSet bool
}

func (v NullableProjectPatch) Get() *ProjectPatch {
	return v.value
}

func (v *NullableProjectPatch) Set(val *ProjectPatch) {
	v.value = val
	v.isSet = true
}

func (v NullableProjectPatch) IsSet() bool {
	return v.isSet
}

func (v *NullableProjectPatch) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableProjectPatch(val *ProjectPatch) *NullableProjectPatch {
	return &NullableProjectPatch{value: val, isSet: true}
}

func (v NullableProjectPatch) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableProjectPatch) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


