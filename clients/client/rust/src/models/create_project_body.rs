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

/// CreateProjectBody : Create Project Request Body
#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct CreateProjectBody {
    /// The environment of the project. prod Production stage Staging dev Development
    #[serde(rename = "environment")]
    pub environment: EnvironmentEnum,
    /// Home Region  The home region of the project. This is the region where the project will be created. eu-central EUCentral us-east USEast us-west USWest us US global Global
    #[serde(rename = "home_region", skip_serializing_if = "Option::is_none")]
    pub home_region: Option<HomeRegionEnum>,
    /// The name of the project to be created
    #[serde(rename = "name")]
    pub name: String,
    /// The workspace to create the project in.
    #[serde(rename = "workspace_id", skip_serializing_if = "Option::is_none")]
    pub workspace_id: Option<String>,
}

impl CreateProjectBody {
    /// Create Project Request Body
    pub fn new(environment: EnvironmentEnum, name: String) -> CreateProjectBody {
        CreateProjectBody {
            environment,
            home_region: None,
            name,
            workspace_id: None,
        }
    }
}
/// The environment of the project. prod Production stage Staging dev Development
#[derive(Clone, Copy, Debug, Eq, PartialEq, Ord, PartialOrd, Hash, Serialize, Deserialize)]
pub enum EnvironmentEnum {
    #[serde(rename = "prod")]
    Prod,
    #[serde(rename = "stage")]
    Stage,
    #[serde(rename = "dev")]
    Dev,
}

impl Default for EnvironmentEnum {
    fn default() -> EnvironmentEnum {
        Self::Prod
    }
}
/// Home Region  The home region of the project. This is the region where the project will be created. eu-central EUCentral us-east USEast us-west USWest us US global Global
#[derive(Clone, Copy, Debug, Eq, PartialEq, Ord, PartialOrd, Hash, Serialize, Deserialize)]
pub enum HomeRegionEnum {
    #[serde(rename = "eu-central")]
    EuCentral,
    #[serde(rename = "us-east")]
    UsEast,
    #[serde(rename = "us-west")]
    UsWest,
    #[serde(rename = "us")]
    Us,
    #[serde(rename = "global")]
    Global,
}

impl Default for HomeRegionEnum {
    fn default() -> HomeRegionEnum {
        Self::EuCentral
    }
}

