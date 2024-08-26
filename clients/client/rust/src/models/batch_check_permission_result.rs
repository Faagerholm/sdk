/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.14.4
 * Contact: support@ory.sh
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

/// BatchCheckPermissionResult : Batch Check Permission Result
#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct BatchCheckPermissionResult {
    /// An array of check results. The order aligns with the input order.
    #[serde(rename = "results")]
    pub results: Vec<models::CheckPermissionResultWithError>,
}

impl BatchCheckPermissionResult {
    /// Batch Check Permission Result
    pub fn new(results: Vec<models::CheckPermissionResultWithError>) -> BatchCheckPermissionResult {
        BatchCheckPermissionResult {
            results,
        }
    }
}

