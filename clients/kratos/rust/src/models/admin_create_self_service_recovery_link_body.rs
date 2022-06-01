/*
 * Ory Kratos API
 *
 * Documentation for all public and administrative Ory Kratos APIs. Public and administrative APIs are exposed on different ports. Public APIs can face the public internet without any protection while administrative APIs should never be exposed without prior authorization. To protect the administative API port you should use something like Nginx, Ory Oathkeeper, or any other technology capable of authorizing incoming requests. 
 *
 * The version of the OpenAPI document: v0.10.1
 * Contact: hi@ory.sh
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct AdminCreateSelfServiceRecoveryLinkBody {
    /// Link Expires In  The recovery link will expire at that point in time. Defaults to the configuration value of `selfservice.flows.recovery.request_lifespan`.
    #[serde(rename = "expires_in", skip_serializing_if = "Option::is_none")]
    pub expires_in: Option<String>,
    #[serde(rename = "identity_id")]
    pub identity_id: String,
}

impl AdminCreateSelfServiceRecoveryLinkBody {
    pub fn new(identity_id: String) -> AdminCreateSelfServiceRecoveryLinkBody {
        AdminCreateSelfServiceRecoveryLinkBody {
            expires_in: None,
            identity_id,
        }
    }
}


