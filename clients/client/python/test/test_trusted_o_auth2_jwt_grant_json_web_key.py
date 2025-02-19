# coding: utf-8

"""
    Ory APIs

    Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

    The version of the OpenAPI document: v1.14.4
    Contact: support@ory.sh
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from ory_client.models.trusted_o_auth2_jwt_grant_json_web_key import TrustedOAuth2JwtGrantJsonWebKey

class TestTrustedOAuth2JwtGrantJsonWebKey(unittest.TestCase):
    """TrustedOAuth2JwtGrantJsonWebKey unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> TrustedOAuth2JwtGrantJsonWebKey:
        """Test TrustedOAuth2JwtGrantJsonWebKey
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `TrustedOAuth2JwtGrantJsonWebKey`
        """
        model = TrustedOAuth2JwtGrantJsonWebKey()
        if include_optional:
            return TrustedOAuth2JwtGrantJsonWebKey(
                kid = '123e4567-e89b-12d3-a456-426655440000',
                set = 'https://jwt-idp.example.com'
            )
        else:
            return TrustedOAuth2JwtGrantJsonWebKey(
        )
        """

    def testTrustedOAuth2JwtGrantJsonWebKey(self):
        """Test TrustedOAuth2JwtGrantJsonWebKey"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
