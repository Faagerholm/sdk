/*
 * Ory Identities API
 *
 * This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more. 
 *
 * The version of the OpenAPI document: v1.0.0
 * Contact: office@ory.sh
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct ErrorBrowserLocationChangeRequired {
    #[serde(rename = "error", skip_serializing_if = "Option::is_none")]
    pub error: Option<Box<crate::models::ErrorGeneric>>,
    /// Points to where to redirect the user to next.
    #[serde(rename = "redirect_browser_to", skip_serializing_if = "Option::is_none")]
    pub redirect_browser_to: Option<String>,
}

impl Default for ErrorBrowserLocationChangeRequired {
    fn default() -> Self {
        Self::new()
    }
}

impl ErrorBrowserLocationChangeRequired {
    pub fn new() -> ErrorBrowserLocationChangeRequired {
        ErrorBrowserLocationChangeRequired {
                error: None,
                redirect_browser_to: None,
        }
    }
}


