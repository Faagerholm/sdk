/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.14.1
 * Contact: support@ory.sh
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

/// CreateEventStreamBody : Create Event Stream Request Body
#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct CreateEventStreamBody {
    /// The AWS IAM role ARN to assume when publishing to the SNS topic.
    #[serde(rename = "role_arn")]
    pub role_arn: String,
    /// The AWS SNS topic ARN.
    #[serde(rename = "topic_arn")]
    pub topic_arn: String,
    /// The type of the event stream (AWS SNS, GCP Pub/Sub, etc).
    #[serde(rename = "type")]
    pub r#type: TypeEnum,
}

impl CreateEventStreamBody {
    /// Create Event Stream Request Body
    pub fn new(role_arn: String, topic_arn: String, r#type: TypeEnum) -> CreateEventStreamBody {
        CreateEventStreamBody {
            role_arn,
            topic_arn,
            r#type,
        }
    }
}
/// The type of the event stream (AWS SNS, GCP Pub/Sub, etc).
#[derive(Clone, Copy, Debug, Eq, PartialEq, Ord, PartialOrd, Hash, Serialize, Deserialize)]
pub enum TypeEnum {
    #[serde(rename = "sns")]
    Sns,
}

impl Default for TypeEnum {
    fn default() -> TypeEnum {
        Self::Sns
    }
}

