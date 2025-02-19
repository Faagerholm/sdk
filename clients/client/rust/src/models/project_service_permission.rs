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

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct ProjectServicePermission {
    #[serde(rename = "config")]
    pub config: serde_json::Value,
}

impl ProjectServicePermission {
    pub fn new(config: serde_json::Value) -> ProjectServicePermission {
        ProjectServicePermission {
            config,
        }
    }
}

