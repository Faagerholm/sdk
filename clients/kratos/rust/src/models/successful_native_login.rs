/*
 * Ory Identities API
 *
 * This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 
 *
 * The version of the OpenAPI document: v1.0.0
 * Contact: office@ory.sh
 * Generated by: https://openapi-generator.tech
 */

/// SuccessfulNativeLogin : The Response for Login Flows via API



#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct SuccessfulNativeLogin {
    #[serde(rename = "session")]
    pub session: Box<crate::models::Session>,
    /// The Session Token  A session token is equivalent to a session cookie, but it can be sent in the HTTP Authorization Header:  Authorization: bearer ${session-token}  The session token is only issued for API flows, not for Browser flows!
    #[serde(rename = "session_token", skip_serializing_if = "Option::is_none")]
    pub session_token: Option<String>,
}


impl SuccessfulNativeLogin {
    /// The Response for Login Flows via API
    pub fn new(session: crate::models::Session) -> SuccessfulNativeLogin {
        SuccessfulNativeLogin {
                session: Box::new(session),
                session_token: None,
        }
    }
}


