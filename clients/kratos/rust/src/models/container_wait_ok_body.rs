/*
 * Ory Kratos API
 *
 * Documentation for all public and administrative Ory Kratos APIs. Public and administrative APIs are exposed on different ports. Public APIs can face the public internet without any protection while administrative APIs should never be exposed without prior authorization. To protect the administative API port you should use something like Nginx, Ory Oathkeeper, or any other technology capable of authorizing incoming requests. 
 *
 * The version of the OpenAPI document: v0.6.2-alpha.1
 * Contact: hi@ory.sh
 * Generated by: https://openapi-generator.tech
 */

/// ContainerWaitOkBody : ContainerWaitOKBody OK response to ContainerWait operation



#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct ContainerWaitOkBody {
    #[serde(rename = "Error")]
    pub error: Box<crate::models::ContainerWaitOkBodyError>,
    /// Exit code of the container
    #[serde(rename = "StatusCode")]
    pub status_code: i64,
}

impl ContainerWaitOkBody {
    /// ContainerWaitOKBody OK response to ContainerWait operation
    pub fn new(error: crate::models::ContainerWaitOkBodyError, status_code: i64) -> ContainerWaitOkBody {
        ContainerWaitOkBody {
            error: Box::new(error),
            status_code,
        }
    }
}


