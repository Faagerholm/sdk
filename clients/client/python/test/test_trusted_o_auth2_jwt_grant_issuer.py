# coding: utf-8

"""
    Ory APIs

    Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

    The version of the OpenAPI document: v1.14.1
    Contact: support@ory.sh
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from ory_client.models.trusted_o_auth2_jwt_grant_issuer import TrustedOAuth2JwtGrantIssuer

class TestTrustedOAuth2JwtGrantIssuer(unittest.TestCase):
    """TrustedOAuth2JwtGrantIssuer unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> TrustedOAuth2JwtGrantIssuer:
        """Test TrustedOAuth2JwtGrantIssuer
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `TrustedOAuth2JwtGrantIssuer`
        """
        model = TrustedOAuth2JwtGrantIssuer()
        if include_optional:
            return TrustedOAuth2JwtGrantIssuer(
                allow_any_subject = True,
                created_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                expires_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                id = '9edc811f-4e28-453c-9b46-4de65f00217f',
                issuer = 'https://jwt-idp.example.com',
                public_key = ory_client.models.trusted_o_auth2_jwt_grant_json_web_key.trustedOAuth2JwtGrantJsonWebKey(
                    kid = '123e4567-e89b-12d3-a456-426655440000', 
                    set = 'https://jwt-idp.example.com', ),
                scope = ["openid","offline"],
                subject = 'mike@example.com'
            )
        else:
            return TrustedOAuth2JwtGrantIssuer(
        )
        """

    def testTrustedOAuth2JwtGrantIssuer(self):
        """Test TrustedOAuth2JwtGrantIssuer"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
