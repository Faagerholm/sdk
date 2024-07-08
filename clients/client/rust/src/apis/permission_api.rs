/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.13.3
 * Contact: support@ory.sh
 * Generated by: https://openapi-generator.tech
 */


use reqwest;
use serde::{Deserialize, Serialize};
use crate::{apis::ResponseContent, models};
use super::{Error, configuration};


/// struct for typed errors of method [`check_permission`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum CheckPermissionError {
    Status400(models::ErrorGeneric),
    DefaultResponse(models::ErrorGeneric),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`check_permission_or_error`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum CheckPermissionOrErrorError {
    Status400(models::ErrorGeneric),
    Status403(models::CheckPermissionResult),
    DefaultResponse(models::ErrorGeneric),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`expand_permissions`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum ExpandPermissionsError {
    Status400(models::ErrorGeneric),
    Status404(models::ErrorGeneric),
    DefaultResponse(models::ErrorGeneric),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`post_check_permission`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum PostCheckPermissionError {
    Status400(models::ErrorGeneric),
    DefaultResponse(models::ErrorGeneric),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method [`post_check_permission_or_error`]
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum PostCheckPermissionOrErrorError {
    Status400(models::ErrorGeneric),
    Status403(models::CheckPermissionResult),
    DefaultResponse(models::ErrorGeneric),
    UnknownValue(serde_json::Value),
}


/// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
pub async fn check_permission(configuration: &configuration::Configuration, namespace: Option<&str>, object: Option<&str>, relation: Option<&str>, subject_id: Option<&str>, subject_set_period_namespace: Option<&str>, subject_set_period_object: Option<&str>, subject_set_period_relation: Option<&str>, max_depth: Option<i64>) -> Result<models::CheckPermissionResult, Error<CheckPermissionError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/relation-tuples/check/openapi", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = namespace {
        local_var_req_builder = local_var_req_builder.query(&[("namespace", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = object {
        local_var_req_builder = local_var_req_builder.query(&[("object", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = relation {
        local_var_req_builder = local_var_req_builder.query(&[("relation", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = subject_id {
        local_var_req_builder = local_var_req_builder.query(&[("subject_id", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = subject_set_period_namespace {
        local_var_req_builder = local_var_req_builder.query(&[("subject_set.namespace", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = subject_set_period_object {
        local_var_req_builder = local_var_req_builder.query(&[("subject_set.object", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = subject_set_period_relation {
        local_var_req_builder = local_var_req_builder.query(&[("subject_set.relation", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_depth {
        local_var_req_builder = local_var_req_builder.query(&[("max-depth", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_token) = local_var_configuration.bearer_access_token {
        local_var_req_builder = local_var_req_builder.bearer_auth(local_var_token.to_owned());
    };

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<CheckPermissionError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
pub async fn check_permission_or_error(configuration: &configuration::Configuration, namespace: Option<&str>, object: Option<&str>, relation: Option<&str>, subject_id: Option<&str>, subject_set_period_namespace: Option<&str>, subject_set_period_object: Option<&str>, subject_set_period_relation: Option<&str>, max_depth: Option<i64>) -> Result<models::CheckPermissionResult, Error<CheckPermissionOrErrorError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/relation-tuples/check", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = namespace {
        local_var_req_builder = local_var_req_builder.query(&[("namespace", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = object {
        local_var_req_builder = local_var_req_builder.query(&[("object", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = relation {
        local_var_req_builder = local_var_req_builder.query(&[("relation", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = subject_id {
        local_var_req_builder = local_var_req_builder.query(&[("subject_id", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = subject_set_period_namespace {
        local_var_req_builder = local_var_req_builder.query(&[("subject_set.namespace", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = subject_set_period_object {
        local_var_req_builder = local_var_req_builder.query(&[("subject_set.object", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = subject_set_period_relation {
        local_var_req_builder = local_var_req_builder.query(&[("subject_set.relation", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_str) = max_depth {
        local_var_req_builder = local_var_req_builder.query(&[("max-depth", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_token) = local_var_configuration.bearer_access_token {
        local_var_req_builder = local_var_req_builder.bearer_auth(local_var_token.to_owned());
    };

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<CheckPermissionOrErrorError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// Use this endpoint to expand a relationship tuple into permissions.
pub async fn expand_permissions(configuration: &configuration::Configuration, namespace: &str, object: &str, relation: &str, max_depth: Option<i64>) -> Result<models::ExpandedPermissionTree, Error<ExpandPermissionsError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/relation-tuples/expand", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::GET, local_var_uri_str.as_str());

    local_var_req_builder = local_var_req_builder.query(&[("namespace", &namespace.to_string())]);
    local_var_req_builder = local_var_req_builder.query(&[("object", &object.to_string())]);
    local_var_req_builder = local_var_req_builder.query(&[("relation", &relation.to_string())]);
    if let Some(ref local_var_str) = max_depth {
        local_var_req_builder = local_var_req_builder.query(&[("max-depth", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_token) = local_var_configuration.bearer_access_token {
        local_var_req_builder = local_var_req_builder.bearer_auth(local_var_token.to_owned());
    };

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<ExpandPermissionsError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
pub async fn post_check_permission(configuration: &configuration::Configuration, max_depth: Option<i64>, post_check_permission_body: Option<models::PostCheckPermissionBody>) -> Result<models::CheckPermissionResult, Error<PostCheckPermissionError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/relation-tuples/check/openapi", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::POST, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = max_depth {
        local_var_req_builder = local_var_req_builder.query(&[("max-depth", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_token) = local_var_configuration.bearer_access_token {
        local_var_req_builder = local_var_req_builder.bearer_auth(local_var_token.to_owned());
    };
    local_var_req_builder = local_var_req_builder.json(&post_check_permission_body);

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<PostCheckPermissionError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

/// To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
pub async fn post_check_permission_or_error(configuration: &configuration::Configuration, max_depth: Option<i64>, post_check_permission_or_error_body: Option<models::PostCheckPermissionOrErrorBody>) -> Result<models::CheckPermissionResult, Error<PostCheckPermissionOrErrorError>> {
    let local_var_configuration = configuration;

    let local_var_client = &local_var_configuration.client;

    let local_var_uri_str = format!("{}/relation-tuples/check", local_var_configuration.base_path);
    let mut local_var_req_builder = local_var_client.request(reqwest::Method::POST, local_var_uri_str.as_str());

    if let Some(ref local_var_str) = max_depth {
        local_var_req_builder = local_var_req_builder.query(&[("max-depth", &local_var_str.to_string())]);
    }
    if let Some(ref local_var_user_agent) = local_var_configuration.user_agent {
        local_var_req_builder = local_var_req_builder.header(reqwest::header::USER_AGENT, local_var_user_agent.clone());
    }
    if let Some(ref local_var_token) = local_var_configuration.bearer_access_token {
        local_var_req_builder = local_var_req_builder.bearer_auth(local_var_token.to_owned());
    };
    local_var_req_builder = local_var_req_builder.json(&post_check_permission_or_error_body);

    let local_var_req = local_var_req_builder.build()?;
    let local_var_resp = local_var_client.execute(local_var_req).await?;

    let local_var_status = local_var_resp.status();
    let local_var_content = local_var_resp.text().await?;

    if !local_var_status.is_client_error() && !local_var_status.is_server_error() {
        serde_json::from_str(&local_var_content).map_err(Error::from)
    } else {
        let local_var_entity: Option<PostCheckPermissionOrErrorError> = serde_json::from_str(&local_var_content).ok();
        let local_var_error = ResponseContent { status: local_var_status, content: local_var_content, entity: local_var_entity };
        Err(Error::ResponseError(local_var_error))
    }
}

