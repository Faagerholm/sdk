/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.13.4
 * Contact: support@ory.sh
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

/// UpdateRecoveryFlowBody : Update Recovery Flow Request Body
#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
#[serde(tag = "method")]
pub enum UpdateRecoveryFlowBody {
    #[serde(rename="link")]
    Link(Box<models::UpdateRecoveryFlowWithLinkMethod>),
    #[serde(rename="code")]
    Code(Box<models::UpdateRecoveryFlowWithCodeMethod>),
}

impl Default for UpdateRecoveryFlowBody {
    fn default() -> Self {
        Self::Link(Default::default())
    }
}


