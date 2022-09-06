"""
    Ory APIs

    Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers.   # noqa: E501

    The version of the OpenAPI document: v0.2.0-alpha.26
    Contact: support@ory.sh
    Generated by: https://openapi-generator.tech
"""


import unittest

import ory_client
from ory_client.api.v0alpha2_api import V0alpha2Api  # noqa: E501


class TestV0alpha2Api(unittest.TestCase):
    """V0alpha2Api unit test stubs"""

    def setUp(self):
        self.api = V0alpha2Api()  # noqa: E501

    def tearDown(self):
        pass

    def test_admin_accept_o_auth2_consent_request(self):
        """Test case for admin_accept_o_auth2_consent_request

        Accept an OAuth 2.0 Consent Request  # noqa: E501
        """
        pass

    def test_admin_accept_o_auth2_login_request(self):
        """Test case for admin_accept_o_auth2_login_request

        Accept an OAuth 2.0 Login Request  # noqa: E501
        """
        pass

    def test_admin_accept_o_auth2_logout_request(self):
        """Test case for admin_accept_o_auth2_logout_request

        Accept an OAuth 2.0 Logout Request  # noqa: E501
        """
        pass

    def test_admin_create_identity(self):
        """Test case for admin_create_identity

        Create an Identity  # noqa: E501
        """
        pass

    def test_admin_create_json_web_key_set(self):
        """Test case for admin_create_json_web_key_set

        Generate a New JSON Web Key  # noqa: E501
        """
        pass

    def test_admin_create_o_auth2_client(self):
        """Test case for admin_create_o_auth2_client

        Create an OAuth 2.0 Client  # noqa: E501
        """
        pass

    def test_admin_create_self_service_recovery_link(self):
        """Test case for admin_create_self_service_recovery_link

        Create a Recovery Link  # noqa: E501
        """
        pass

    def test_admin_delete_identity(self):
        """Test case for admin_delete_identity

        Delete an Identity  # noqa: E501
        """
        pass

    def test_admin_delete_identity_sessions(self):
        """Test case for admin_delete_identity_sessions

        Calling this endpoint irrecoverably and permanently deletes and invalidates all sessions that belong to the given Identity.  # noqa: E501
        """
        pass

    def test_admin_delete_json_web_key(self):
        """Test case for admin_delete_json_web_key

        Delete a JSON Web Key  # noqa: E501
        """
        pass

    def test_admin_delete_json_web_key_set(self):
        """Test case for admin_delete_json_web_key_set

        Delete a JSON Web Key Set  # noqa: E501
        """
        pass

    def test_admin_delete_o_auth2_client(self):
        """Test case for admin_delete_o_auth2_client

        Deletes an OAuth 2.0 Client  # noqa: E501
        """
        pass

    def test_admin_delete_o_auth2_token(self):
        """Test case for admin_delete_o_auth2_token

        Delete OAuth2 Access Tokens from a Client  # noqa: E501
        """
        pass

    def test_admin_delete_trusted_o_auth2_jwt_grant_issuer(self):
        """Test case for admin_delete_trusted_o_auth2_jwt_grant_issuer

        Delete a Trusted OAuth2 JWT Bearer Grant Type Issuer  # noqa: E501
        """
        pass

    def test_admin_extend_session(self):
        """Test case for admin_extend_session

        Calling this endpoint extends the given session ID. If `session.earliest_possible_extend` is set it will only extend the session after the specified time has passed.  # noqa: E501
        """
        pass

    def test_admin_get_identity(self):
        """Test case for admin_get_identity

        Get an Identity  # noqa: E501
        """
        pass

    def test_admin_get_json_web_key(self):
        """Test case for admin_get_json_web_key

        Fetch a JSON Web Key  # noqa: E501
        """
        pass

    def test_admin_get_json_web_key_set(self):
        """Test case for admin_get_json_web_key_set

        Retrieve a JSON Web Key Set  # noqa: E501
        """
        pass

    def test_admin_get_o_auth2_client(self):
        """Test case for admin_get_o_auth2_client

        Get an OAuth 2.0 Client  # noqa: E501
        """
        pass

    def test_admin_get_o_auth2_consent_request(self):
        """Test case for admin_get_o_auth2_consent_request

        Get OAuth 2.0 Consent Request Information  # noqa: E501
        """
        pass

    def test_admin_get_o_auth2_login_request(self):
        """Test case for admin_get_o_auth2_login_request

        Get an OAuth 2.0 Login Request  # noqa: E501
        """
        pass

    def test_admin_get_o_auth2_logout_request(self):
        """Test case for admin_get_o_auth2_logout_request

        Get an OAuth 2.0 Logout Request  # noqa: E501
        """
        pass

    def test_admin_get_trusted_o_auth2_jwt_grant_issuer(self):
        """Test case for admin_get_trusted_o_auth2_jwt_grant_issuer

        Get a Trusted OAuth2 JWT Bearer Grant Type Issuer  # noqa: E501
        """
        pass

    def test_admin_introspect_o_auth2_token(self):
        """Test case for admin_introspect_o_auth2_token

        Introspect OAuth2 Access or Refresh Tokens  # noqa: E501
        """
        pass

    def test_admin_list_identities(self):
        """Test case for admin_list_identities

        List Identities  # noqa: E501
        """
        pass

    def test_admin_list_identity_sessions(self):
        """Test case for admin_list_identity_sessions

        This endpoint returns all sessions that belong to the given Identity.  # noqa: E501
        """
        pass

    def test_admin_list_o_auth2_clients(self):
        """Test case for admin_list_o_auth2_clients

        List OAuth 2.0 Clients  # noqa: E501
        """
        pass

    def test_admin_list_o_auth2_subject_consent_sessions(self):
        """Test case for admin_list_o_auth2_subject_consent_sessions

        List OAuth 2.0 Consent Sessions of a Subject  # noqa: E501
        """
        pass

    def test_admin_list_trusted_o_auth2_jwt_grant_issuers(self):
        """Test case for admin_list_trusted_o_auth2_jwt_grant_issuers

        List Trusted OAuth2 JWT Bearer Grant Type Issuers  # noqa: E501
        """
        pass

    def test_admin_patch_identity(self):
        """Test case for admin_patch_identity

        Partially updates an Identity's field using [JSON Patch](https://jsonpatch.com/)  # noqa: E501
        """
        pass

    def test_admin_patch_o_auth2_client(self):
        """Test case for admin_patch_o_auth2_client

        Patch an OAuth 2.0 Client  # noqa: E501
        """
        pass

    def test_admin_reject_o_auth2_consent_request(self):
        """Test case for admin_reject_o_auth2_consent_request

        Reject an OAuth 2.0 Consent Request  # noqa: E501
        """
        pass

    def test_admin_reject_o_auth2_login_request(self):
        """Test case for admin_reject_o_auth2_login_request

        Reject an OAuth 2.0 Login Request  # noqa: E501
        """
        pass

    def test_admin_reject_o_auth2_logout_request(self):
        """Test case for admin_reject_o_auth2_logout_request

        Reject an OAuth 2.0 Logout Request  # noqa: E501
        """
        pass

    def test_admin_revoke_o_auth2_consent_sessions(self):
        """Test case for admin_revoke_o_auth2_consent_sessions

        Revokes OAuth 2.0 Consent Sessions of a Subject for a Specific OAuth 2.0 Client  # noqa: E501
        """
        pass

    def test_admin_revoke_o_auth2_login_sessions(self):
        """Test case for admin_revoke_o_auth2_login_sessions

        Invalidates All OAuth 2.0 Login Sessions of a Certain User  # noqa: E501
        """
        pass

    def test_admin_trust_o_auth2_jwt_grant_issuer(self):
        """Test case for admin_trust_o_auth2_jwt_grant_issuer

        Trust an OAuth2 JWT Bearer Grant Type Issuer  # noqa: E501
        """
        pass

    def test_admin_update_identity(self):
        """Test case for admin_update_identity

        Update an Identity  # noqa: E501
        """
        pass

    def test_admin_update_json_web_key(self):
        """Test case for admin_update_json_web_key

        Update a JSON Web Key  # noqa: E501
        """
        pass

    def test_admin_update_json_web_key_set(self):
        """Test case for admin_update_json_web_key_set

        Update a JSON Web Key Set  # noqa: E501
        """
        pass

    def test_admin_update_o_auth2_client(self):
        """Test case for admin_update_o_auth2_client

        Update an OAuth 2.0 Client  # noqa: E501
        """
        pass

    def test_create_project(self):
        """Test case for create_project

        Create a Project  # noqa: E501
        """
        pass

    def test_create_self_service_logout_flow_url_for_browsers(self):
        """Test case for create_self_service_logout_flow_url_for_browsers

        Create a Logout URL for Browsers  # noqa: E501
        """
        pass

    def test_discover_json_web_keys(self):
        """Test case for discover_json_web_keys

        Discover JSON Web Keys  # noqa: E501
        """
        pass

    def test_discover_oidc_configuration(self):
        """Test case for discover_oidc_configuration

        OpenID Connect Discovery  # noqa: E501
        """
        pass

    def test_dynamic_client_registration_create_o_auth2_client(self):
        """Test case for dynamic_client_registration_create_o_auth2_client

        Register an OAuth 2.0 Client using the OpenID / OAuth2 Dynamic Client Registration Management Protocol  # noqa: E501
        """
        pass

    def test_dynamic_client_registration_delete_o_auth2_client(self):
        """Test case for dynamic_client_registration_delete_o_auth2_client

        Deletes an OAuth 2.0 Client using the OpenID / OAuth2 Dynamic Client Registration Management Protocol  # noqa: E501
        """
        pass

    def test_dynamic_client_registration_get_o_auth2_client(self):
        """Test case for dynamic_client_registration_get_o_auth2_client

        Get an OAuth 2.0 Client using the OpenID / OAuth2 Dynamic Client Registration Management Protocol  # noqa: E501
        """
        pass

    def test_dynamic_client_registration_update_o_auth2_client(self):
        """Test case for dynamic_client_registration_update_o_auth2_client

        Update an OAuth 2.0 Client using the OpenID / OAuth2 Dynamic Client Registration Management Protocol  # noqa: E501
        """
        pass

    def test_get_identity_schema(self):
        """Test case for get_identity_schema

        """
        pass

    def test_get_oidc_user_info(self):
        """Test case for get_oidc_user_info

        OpenID Connect Userinfo  # noqa: E501
        """
        pass

    def test_get_project(self):
        """Test case for get_project

        Get a Project  # noqa: E501
        """
        pass

    def test_get_project_members(self):
        """Test case for get_project_members

        Get all members associated with this project.  # noqa: E501
        """
        pass

    def test_get_self_service_error(self):
        """Test case for get_self_service_error

        Get Self-Service Errors  # noqa: E501
        """
        pass

    def test_get_self_service_login_flow(self):
        """Test case for get_self_service_login_flow

        Get Login Flow  # noqa: E501
        """
        pass

    def test_get_self_service_recovery_flow(self):
        """Test case for get_self_service_recovery_flow

        Get Recovery Flow  # noqa: E501
        """
        pass

    def test_get_self_service_registration_flow(self):
        """Test case for get_self_service_registration_flow

        Get Registration Flow  # noqa: E501
        """
        pass

    def test_get_self_service_settings_flow(self):
        """Test case for get_self_service_settings_flow

        Get Settings Flow  # noqa: E501
        """
        pass

    def test_get_self_service_verification_flow(self):
        """Test case for get_self_service_verification_flow

        Get Verification Flow  # noqa: E501
        """
        pass

    def test_get_web_authn_java_script(self):
        """Test case for get_web_authn_java_script

        Get WebAuthn JavaScript  # noqa: E501
        """
        pass

    def test_initialize_self_service_login_flow_for_browsers(self):
        """Test case for initialize_self_service_login_flow_for_browsers

        Initialize Login Flow for Browsers  # noqa: E501
        """
        pass

    def test_initialize_self_service_login_flow_without_browser(self):
        """Test case for initialize_self_service_login_flow_without_browser

        Initialize Login Flow for APIs, Services, Apps, ...  # noqa: E501
        """
        pass

    def test_initialize_self_service_recovery_flow_for_browsers(self):
        """Test case for initialize_self_service_recovery_flow_for_browsers

        Initialize Recovery Flow for Browsers  # noqa: E501
        """
        pass

    def test_initialize_self_service_recovery_flow_without_browser(self):
        """Test case for initialize_self_service_recovery_flow_without_browser

        Initialize Recovery Flow for APIs, Services, Apps, ...  # noqa: E501
        """
        pass

    def test_initialize_self_service_registration_flow_for_browsers(self):
        """Test case for initialize_self_service_registration_flow_for_browsers

        Initialize Registration Flow for Browsers  # noqa: E501
        """
        pass

    def test_initialize_self_service_registration_flow_without_browser(self):
        """Test case for initialize_self_service_registration_flow_without_browser

        Initialize Registration Flow for APIs, Services, Apps, ...  # noqa: E501
        """
        pass

    def test_initialize_self_service_settings_flow_for_browsers(self):
        """Test case for initialize_self_service_settings_flow_for_browsers

        Initialize Settings Flow for Browsers  # noqa: E501
        """
        pass

    def test_initialize_self_service_settings_flow_without_browser(self):
        """Test case for initialize_self_service_settings_flow_without_browser

        Initialize Settings Flow for APIs, Services, Apps, ...  # noqa: E501
        """
        pass

    def test_initialize_self_service_verification_flow_for_browsers(self):
        """Test case for initialize_self_service_verification_flow_for_browsers

        Initialize Verification Flow for Browser Clients  # noqa: E501
        """
        pass

    def test_initialize_self_service_verification_flow_without_browser(self):
        """Test case for initialize_self_service_verification_flow_without_browser

        Initialize Verification Flow for APIs, Services, Apps, ...  # noqa: E501
        """
        pass

    def test_list_identity_schemas(self):
        """Test case for list_identity_schemas

        """
        pass

    def test_list_projects(self):
        """Test case for list_projects

        List All Projects  # noqa: E501
        """
        pass

    def test_list_sessions(self):
        """Test case for list_sessions

        This endpoints returns all other active sessions that belong to the logged-in user. The current session can be retrieved by calling the `/sessions/whoami` endpoint.  # noqa: E501
        """
        pass

    def test_patch_project(self):
        """Test case for patch_project

        Patch an Ory Cloud Project Configuration`  # noqa: E501
        """
        pass

    def test_perform_o_auth2_authorization_flow(self):
        """Test case for perform_o_auth2_authorization_flow

        The OAuth 2.0 Authorize Endpoint  # noqa: E501
        """
        pass

    def test_perform_o_auth2_token_flow(self):
        """Test case for perform_o_auth2_token_flow

        The OAuth 2.0 Token Endpoint  # noqa: E501
        """
        pass

    def test_perform_oidc_front_or_back_channel_logout(self):
        """Test case for perform_oidc_front_or_back_channel_logout

        OpenID Connect Front- or Back-channel Enabled Logout  # noqa: E501
        """
        pass

    def test_purge_project(self):
        """Test case for purge_project

        Irrecoverably Purge a Project  # noqa: E501
        """
        pass

    def test_remove_project_member(self):
        """Test case for remove_project_member

        Remove a member associated with this project. This also sets their invite status to `REMOVED`.  # noqa: E501
        """
        pass

    def test_revoke_o_auth2_token(self):
        """Test case for revoke_o_auth2_token

        Revoke an OAuth2 Access or Refresh Token  # noqa: E501
        """
        pass

    def test_revoke_session(self):
        """Test case for revoke_session

        Calling this endpoint invalidates the specified session. The current session cannot be revoked. Session data are not deleted.  # noqa: E501
        """
        pass

    def test_revoke_sessions(self):
        """Test case for revoke_sessions

        Calling this endpoint invalidates all except the current session that belong to the logged-in user. Session data are not deleted.  # noqa: E501
        """
        pass

    def test_submit_self_service_login_flow(self):
        """Test case for submit_self_service_login_flow

        Submit a Login Flow  # noqa: E501
        """
        pass

    def test_submit_self_service_logout_flow(self):
        """Test case for submit_self_service_logout_flow

        Complete Self-Service Logout  # noqa: E501
        """
        pass

    def test_submit_self_service_logout_flow_without_browser(self):
        """Test case for submit_self_service_logout_flow_without_browser

        Perform Logout for APIs, Services, Apps, ...  # noqa: E501
        """
        pass

    def test_submit_self_service_recovery_flow(self):
        """Test case for submit_self_service_recovery_flow

        Complete Recovery Flow  # noqa: E501
        """
        pass

    def test_submit_self_service_registration_flow(self):
        """Test case for submit_self_service_registration_flow

        Submit a Registration Flow  # noqa: E501
        """
        pass

    def test_submit_self_service_settings_flow(self):
        """Test case for submit_self_service_settings_flow

        Complete Settings Flow  # noqa: E501
        """
        pass

    def test_submit_self_service_verification_flow(self):
        """Test case for submit_self_service_verification_flow

        Complete Verification Flow  # noqa: E501
        """
        pass

    def test_to_session(self):
        """Test case for to_session

        Check Who the Current HTTP Session Belongs To  # noqa: E501
        """
        pass

    def test_update_project(self):
        """Test case for update_project

        Update an Ory Cloud Project Configuration  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
