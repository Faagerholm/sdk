=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v0.0.1-alpha.93
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

# Common files
require 'ory-client/api_client'
require 'ory-client/api_error'
require 'ory-client/version'
require 'ory-client/configuration'

# Models
require 'ory-client/models/active_project'
require 'ory-client/models/admin_create_identity_body'
require 'ory-client/models/admin_create_self_service_recovery_link_body'
require 'ory-client/models/admin_update_identity_body'
require 'ory-client/models/api_token'
require 'ory-client/models/authenticator_assurance_level'
require 'ory-client/models/cloud_account'
require 'ory-client/models/cname_settings'
require 'ory-client/models/create_custom_hostname_body'
require 'ory-client/models/create_subscription_payload'
require 'ory-client/models/error_authenticator_assurance_level_not_satisfied'
require 'ory-client/models/generic_error'
require 'ory-client/models/health_not_ready_status'
require 'ory-client/models/health_status'
require 'ory-client/models/identity'
require 'ory-client/models/identity_credentials'
require 'ory-client/models/identity_credentials_type'
require 'ory-client/models/identity_preset'
require 'ory-client/models/identity_schema'
require 'ory-client/models/identity_schema_location'
require 'ory-client/models/identity_schema_validation_result'
require 'ory-client/models/identity_state'
require 'ory-client/models/inline_object'
require 'ory-client/models/inline_response200'
require 'ory-client/models/inline_response2001'
require 'ory-client/models/inline_response503'
require 'ory-client/models/invite_payload'
require 'ory-client/models/is_owner_for_project_by_slug'
require 'ory-client/models/is_owner_for_project_by_slug_payload'
require 'ory-client/models/json_error'
require 'ory-client/models/needs_privileged_session_error'
require 'ory-client/models/null_plan'
require 'ory-client/models/pagination'
require 'ory-client/models/project'
require 'ory-client/models/project_host'
require 'ory-client/models/project_invite'
require 'ory-client/models/project_revision'
require 'ory-client/models/project_revision_hook'
require 'ory-client/models/project_revision_identity_schema'
require 'ory-client/models/project_revision_third_party_login_provider'
require 'ory-client/models/project_slug'
require 'ory-client/models/quota_project_member_seats'
require 'ory-client/models/recovery_address'
require 'ory-client/models/revoked_sessions'
require 'ory-client/models/schema_patch'
require 'ory-client/models/self_service_browser_location_change_required_error'
require 'ory-client/models/self_service_error'
require 'ory-client/models/self_service_flow_expired_error'
require 'ory-client/models/self_service_login_flow'
require 'ory-client/models/self_service_logout_url'
require 'ory-client/models/self_service_recovery_flow'
require 'ory-client/models/self_service_recovery_flow_state'
require 'ory-client/models/self_service_recovery_link'
require 'ory-client/models/self_service_registration_flow'
require 'ory-client/models/self_service_settings_flow'
require 'ory-client/models/self_service_settings_flow_state'
require 'ory-client/models/self_service_verification_flow'
require 'ory-client/models/self_service_verification_flow_state'
require 'ory-client/models/session'
require 'ory-client/models/session_authentication_method'
require 'ory-client/models/session_device'
require 'ory-client/models/settings_profile_form_config'
require 'ory-client/models/stripe_customer_response'
require 'ory-client/models/submit_self_service_login_flow_body'
require 'ory-client/models/submit_self_service_login_flow_with_lookup_secret_method_body'
require 'ory-client/models/submit_self_service_login_flow_with_oidc_method_body'
require 'ory-client/models/submit_self_service_login_flow_with_password_method_body'
require 'ory-client/models/submit_self_service_login_flow_with_totp_method_body'
require 'ory-client/models/submit_self_service_login_flow_with_web_authn_method_body'
require 'ory-client/models/submit_self_service_logout_flow_without_browser_body'
require 'ory-client/models/submit_self_service_recovery_flow_body'
require 'ory-client/models/submit_self_service_recovery_flow_with_link_method_body'
require 'ory-client/models/submit_self_service_registration_flow_body'
require 'ory-client/models/submit_self_service_registration_flow_with_oidc_method_body'
require 'ory-client/models/submit_self_service_registration_flow_with_password_method_body'
require 'ory-client/models/submit_self_service_settings_flow_body'
require 'ory-client/models/submit_self_service_settings_flow_with_lookup_method_body'
require 'ory-client/models/submit_self_service_settings_flow_with_oidc_method_body'
require 'ory-client/models/submit_self_service_settings_flow_with_password_method_body'
require 'ory-client/models/submit_self_service_settings_flow_with_profile_method_body'
require 'ory-client/models/submit_self_service_settings_flow_with_totp_method_body'
require 'ory-client/models/submit_self_service_settings_flow_with_web_authn_method_body'
require 'ory-client/models/submit_self_service_verification_flow_body'
require 'ory-client/models/submit_self_service_verification_flow_with_link_method_body'
require 'ory-client/models/subscription'
require 'ory-client/models/successful_project_config_update'
require 'ory-client/models/successful_self_service_login_without_browser'
require 'ory-client/models/successful_self_service_registration_without_browser'
require 'ory-client/models/ui_container'
require 'ory-client/models/ui_node'
require 'ory-client/models/ui_node_anchor_attributes'
require 'ory-client/models/ui_node_attributes'
require 'ory-client/models/ui_node_image_attributes'
require 'ory-client/models/ui_node_input_attributes'
require 'ory-client/models/ui_node_meta'
require 'ory-client/models/ui_node_script_attributes'
require 'ory-client/models/ui_node_text_attributes'
require 'ory-client/models/ui_text'
require 'ory-client/models/update_custom_hostname_body'
require 'ory-client/models/update_project_config_config'
require 'ory-client/models/update_subscription_payload'
require 'ory-client/models/verifiable_identity_address'
require 'ory-client/models/version'
require 'ory-client/models/warning'

# APIs
require 'ory-client/api/metadata_api'
require 'ory-client/api/v0alpha0_api'
require 'ory-client/api/v0alpha2_api'

module OryClient
  class << self
    # Customize default settings for the SDK using block.
    #   OryClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
