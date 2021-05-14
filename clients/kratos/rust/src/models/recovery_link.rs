/*
 * Ory Kratos API
 *
 * Documentation for all public and administrative Ory Kratos APIs. Public and administrative APIs are exposed on different ports. Public APIs can face the public internet without any protection while administrative APIs should never be exposed without prior authorization. To protect the administative API port you should use something like Nginx, Ory Oathkeeper, or any other technology capable of authorizing incoming requests. 
 *
 * The version of the OpenAPI document: v0.6.2-alpha.1
 * Contact: hi@ory.sh
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct RecoveryLink {
    /// Recovery Link Expires At  The timestamp when the recovery link expires.
    #[serde(rename = "expires_at", skip_serializing_if = "Option::is_none")]
    pub expires_at: Option<String>,
    /// Recovery Link  This link can be used to recover the account.
    #[serde(rename = "recovery_link")]
    pub recovery_link: String,
}

impl RecoveryLink {
    pub fn new(recovery_link: String) -> RecoveryLink {
        RecoveryLink {
            expires_at: None,
            recovery_link,
        }
    }
}


