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
pub struct WorkspaceApiKey {
    /// The API key's creation date
    #[serde(rename = "created_at", skip_serializing_if = "Option::is_none")]
    pub created_at: Option<String>,
    /// The key's ID.
    #[serde(rename = "id")]
    pub id: String,
    /// The API key's Name  Set this to help you remember, for example, where you use the API key.
    #[serde(rename = "name")]
    pub name: String,
    /// The key's owner
    #[serde(rename = "owner_id")]
    pub owner_id: String,
    /// The API key's last update date
    #[serde(rename = "updated_at", skip_serializing_if = "Option::is_none")]
    pub updated_at: Option<String>,
    /// The key's value
    #[serde(rename = "value", skip_serializing_if = "Option::is_none")]
    pub value: Option<String>,
    /// The API token's workspace ID
    #[serde(rename = "workspace_id", skip_serializing_if = "Option::is_none")]
    pub workspace_id: Option<String>,
}

impl WorkspaceApiKey {
    pub fn new(id: String, name: String, owner_id: String) -> WorkspaceApiKey {
        WorkspaceApiKey {
            created_at: None,
            id,
            name,
            owner_id,
            updated_at: None,
            value: None,
            workspace_id: None,
        }
    }
}

