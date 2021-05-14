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
pub struct RevokeSession {
    /// The Session Token  Invalidate this session token.
    #[serde(rename = "session_token")]
    pub session_token: String,
}

impl RevokeSession {
    pub fn new(session_token: String) -> RevokeSession {
        RevokeSession {
            session_token,
        }
    }
}


