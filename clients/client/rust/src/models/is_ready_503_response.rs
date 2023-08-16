/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.1.47
 * Contact: support@ory.sh
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct IsReady503Response {
    /// Errors contains a list of errors that caused the not ready status.
    #[serde(rename = "errors")]
    pub errors: ::std::collections::HashMap<String, String>,
}


impl IsReady503Response {
    pub fn new(errors: ::std::collections::HashMap<String, String>) -> IsReady503Response {
        IsReady503Response {
                errors,
        }
    }
}


