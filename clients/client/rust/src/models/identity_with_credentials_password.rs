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

/// IdentityWithCredentialsPassword : Create Identity and Import Password Credentials
#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct IdentityWithCredentialsPassword {
    #[serde(rename = "config", skip_serializing_if = "Option::is_none")]
    pub config: Option<Box<models::IdentityWithCredentialsPasswordConfig>>,
}

impl IdentityWithCredentialsPassword {
    /// Create Identity and Import Password Credentials
    pub fn new() -> IdentityWithCredentialsPassword {
        IdentityWithCredentialsPassword {
            config: None,
        }
    }
}

