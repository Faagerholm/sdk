/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.14.4
 * Contact: support@ory.sh
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

/// UpdateLoginFlowWithPasskeyMethod : Update Login Flow with Passkey Method
#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct UpdateLoginFlowWithPasskeyMethod {
    /// Sending the anti-csrf token is only required for browser login flows.
    #[serde(rename = "csrf_token", skip_serializing_if = "Option::is_none")]
    pub csrf_token: Option<String>,
    /// Method should be set to \"passkey\" when logging in using the Passkey strategy.
    #[serde(rename = "method")]
    pub method: String,
    /// Login a WebAuthn Security Key  This must contain the ID of the WebAuthN connection.
    #[serde(rename = "passkey_login", skip_serializing_if = "Option::is_none")]
    pub passkey_login: Option<String>,
}

impl UpdateLoginFlowWithPasskeyMethod {
    /// Update Login Flow with Passkey Method
    pub fn new(method: String) -> UpdateLoginFlowWithPasskeyMethod {
        UpdateLoginFlowWithPasskeyMethod {
            csrf_token: None,
            method,
            passkey_login: None,
        }
    }
}

