/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.14.1
 * Contact: support@ory.sh
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ContinueWithSettingsUiFlow {
    /// The ID of the settings flow
    #[serde(rename = "id")]
    pub id: String,
    /// The URL of the settings flow  If this value is set, redirect the user's browser to this URL. This value is typically unset for native clients / API flows.
    #[serde(rename = "url", skip_serializing_if = "Option::is_none")]
    pub url: Option<String>,
}

impl ContinueWithSettingsUiFlow {
    pub fn new(id: String) -> ContinueWithSettingsUiFlow {
        ContinueWithSettingsUiFlow {
            id,
            url: None,
        }
    }
}

