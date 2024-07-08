/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.13.3
 * Contact: support@ory.sh
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct NormalizedProject {
    /// The Project's Creation Date
    #[serde(rename = "created_at")]
    pub created_at: String,
    #[serde(rename = "current_revision")]
    pub current_revision: Box<models::NormalizedProjectRevision>,
    /// The environment of the project. prod Production stage Staging dev Development
    #[serde(rename = "environment")]
    pub environment: EnvironmentEnum,
    /// The project's data home region. eu-central EUCentral us-east USEast us-west USWest global Global
    #[serde(rename = "home_region")]
    pub home_region: HomeRegionEnum,
    #[serde(rename = "hosts")]
    pub hosts: Vec<String>,
    /// The project's ID.
    #[serde(rename = "id")]
    pub id: String,
    /// The project's slug
    #[serde(rename = "slug")]
    pub slug: String,
    /// The state of the project. running Running halted Halted deleted Deleted
    #[serde(rename = "state")]
    pub state: StateEnum,
    #[serde(rename = "subscription_id", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub subscription_id: Option<Option<String>>,
    #[serde(rename = "subscription_plan", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub subscription_plan: Option<Option<String>>,
    /// Last Time Project was Updated
    #[serde(rename = "updated_at")]
    pub updated_at: String,
    #[serde(rename = "workspace", skip_serializing_if = "Option::is_none")]
    pub workspace: Option<Box<models::Workspace>>,
    #[serde(rename = "workspace_id", deserialize_with = "Option::deserialize")]
    pub workspace_id: Option<String>,
}

impl NormalizedProject {
    pub fn new(created_at: String, current_revision: models::NormalizedProjectRevision, environment: EnvironmentEnum, home_region: HomeRegionEnum, hosts: Vec<String>, id: String, slug: String, state: StateEnum, updated_at: String, workspace_id: Option<String>) -> NormalizedProject {
        NormalizedProject {
            created_at,
            current_revision: Box::new(current_revision),
            environment,
            home_region,
            hosts,
            id,
            slug,
            state,
            subscription_id: None,
            subscription_plan: None,
            updated_at,
            workspace: None,
            workspace_id,
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
/// The project's data home region. eu-central EUCentral us-east USEast us-west USWest global Global
#[derive(Clone, Copy, Debug, Eq, PartialEq, Ord, PartialOrd, Hash, Serialize, Deserialize)]
pub enum HomeRegionEnum {
    #[serde(rename = "eu-central")]
    EuCentral,
    #[serde(rename = "us-east")]
    UsEast,
    #[serde(rename = "us-west")]
    UsWest,
    #[serde(rename = "global")]
    Global,
}

impl Default for HomeRegionEnum {
    fn default() -> HomeRegionEnum {
        Self::EuCentral
    }
}
/// The state of the project. running Running halted Halted deleted Deleted
#[derive(Clone, Copy, Debug, Eq, PartialEq, Ord, PartialOrd, Hash, Serialize, Deserialize)]
pub enum StateEnum {
    #[serde(rename = "running")]
    Running,
    #[serde(rename = "halted")]
    Halted,
    #[serde(rename = "deleted")]
    Deleted,
}

impl Default for StateEnum {
    fn default() -> StateEnum {
        Self::Running
    }
}

