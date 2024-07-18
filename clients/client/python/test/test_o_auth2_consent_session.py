# coding: utf-8

"""
    Ory APIs

    Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

    The version of the OpenAPI document: v1.14.2
    Contact: support@ory.sh
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from ory_client.models.o_auth2_consent_session import OAuth2ConsentSession

class TestOAuth2ConsentSession(unittest.TestCase):
    """OAuth2ConsentSession unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> OAuth2ConsentSession:
        """Test OAuth2ConsentSession
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `OAuth2ConsentSession`
        """
        model = OAuth2ConsentSession()
        if include_optional:
            return OAuth2ConsentSession(
                consent_request = ory_client.models.contains_information_on_an_ongoing_consent_request/.Contains information on an ongoing consent request.(
                    acr = '', 
                    amr = [
                        ''
                        ], 
                    challenge = '', 
                    client = ory_client.models.o_auth_2/0_client.OAuth 2.0 Client(
                        access_token_strategy = '', 
                        allowed_cors_origins = [
                            ''
                            ], 
                        audience = , 
                        authorization_code_grant_access_token_lifespan = '4ms', 
                        authorization_code_grant_id_token_lifespan = '4ms', 
                        authorization_code_grant_refresh_token_lifespan = '4ms', 
                        backchannel_logout_session_required = True, 
                        backchannel_logout_uri = '', 
                        client_credentials_grant_access_token_lifespan = '4ms', 
                        client_id = '', 
                        client_name = '', 
                        client_secret = '', 
                        client_secret_expires_at = 56, 
                        client_uri = '', 
                        contacts = , 
                        created_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                        frontchannel_logout_session_required = True, 
                        frontchannel_logout_uri = '', 
                        grant_types = , 
                        implicit_grant_access_token_lifespan = '4ms', 
                        implicit_grant_id_token_lifespan = '4ms', 
                        jwks = null, 
                        jwks_uri = '', 
                        jwt_bearer_grant_access_token_lifespan = '4ms', 
                        logo_uri = '', 
                        metadata = ory_client.models.json_raw_message_represents_a_json/raw_message_that_works_well_with_json,_sql,_and_swagger/.JSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger.(), 
                        owner = '', 
                        policy_uri = '', 
                        post_logout_redirect_uris = , 
                        redirect_uris = , 
                        refresh_token_grant_access_token_lifespan = '4ms', 
                        refresh_token_grant_id_token_lifespan = '4ms', 
                        refresh_token_grant_refresh_token_lifespan = '4ms', 
                        registration_access_token = '', 
                        registration_client_uri = '', 
                        request_object_signing_alg = '', 
                        request_uris = , 
                        response_types = , 
                        scope = 'scope1 scope-2 scope.3 scope:4', 
                        sector_identifier_uri = '', 
                        skip_consent = True, 
                        skip_logout_consent = True, 
                        subject_type = '', 
                        token_endpoint_auth_method = 'client_secret_basic', 
                        token_endpoint_auth_signing_alg = '', 
                        tos_uri = '', 
                        updated_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                        userinfo_signed_response_alg = '', ), 
                    context = ory_client.models.json_raw_message_represents_a_json/raw_message_that_works_well_with_json,_sql,_and_swagger/.JSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger.(), 
                    login_challenge = '', 
                    login_session_id = '', 
                    oidc_context = ory_client.models.contains_optional_information_about_the_open_id_connect_request/.Contains optional information about the OpenID Connect request.(
                        acr_values = [
                            ''
                            ], 
                        display = '', 
                        id_token_hint_claims = {
                            'key' : null
                            }, 
                        login_hint = '', 
                        ui_locales = [
                            ''
                            ], ), 
                    request_url = '', 
                    requested_access_token_audience = , 
                    requested_scope = , 
                    skip = True, 
                    subject = '', ),
                context = ory_client.models.json_raw_message_represents_a_json/raw_message_that_works_well_with_json,_sql,_and_swagger/.JSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger.(),
                expires_at = ory_client.models.o_auth2_consent_session_expires_at.oAuth2ConsentSession_expires_at(
                    access_token = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                    authorize_code = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                    id_token = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                    par_context = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                    refresh_token = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), ),
                grant_access_token_audience = [
                    ''
                    ],
                grant_scope = [
                    ''
                    ],
                handled_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                remember = True,
                remember_for = 56,
                session = ory_client.models.pass_session_data_to_a_consent_request/.Pass session data to a consent request.(
                    access_token = null, 
                    id_token = null, )
            )
        else:
            return OAuth2ConsentSession(
        )
        """

    def testOAuth2ConsentSession(self):
        """Test OAuth2ConsentSession"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
