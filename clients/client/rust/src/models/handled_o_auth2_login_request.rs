/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v0.2.0-alpha.26
 * Contact: support@ory.sh
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct HandledOAuth2LoginRequest {
    /// Original request URL to which you should redirect the user if request was already handled.
    #[serde(rename = "redirect_to")]
    pub redirect_to: String,
}


impl HandledOAuth2LoginRequest {
    pub fn new(redirect_to: String) -> HandledOAuth2LoginRequest {
        HandledOAuth2LoginRequest {
                redirect_to,
        }
    }
}


