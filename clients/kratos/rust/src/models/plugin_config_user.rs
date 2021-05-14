/*
 * Ory Kratos API
 *
 * Documentation for all public and administrative Ory Kratos APIs. Public and administrative APIs are exposed on different ports. Public APIs can face the public internet without any protection while administrative APIs should never be exposed without prior authorization. To protect the administative API port you should use something like Nginx, Ory Oathkeeper, or any other technology capable of authorizing incoming requests. 
 *
 * The version of the OpenAPI document: v0.6.2-alpha.1
 * Contact: hi@ory.sh
 * Generated by: https://openapi-generator.tech
 */

/// PluginConfigUser : PluginConfigUser plugin config user



#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct PluginConfigUser {
    /// g ID
    #[serde(rename = "GID", skip_serializing_if = "Option::is_none")]
    pub GID: Option<i32>,
    /// UID
    #[serde(rename = "UID", skip_serializing_if = "Option::is_none")]
    pub UID: Option<i32>,
}

impl PluginConfigUser {
    /// PluginConfigUser plugin config user
    pub fn new() -> PluginConfigUser {
        PluginConfigUser {
            GID: None,
            UID: None,
        }
    }
}


