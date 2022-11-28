"""
    Ory APIs

    Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers.   # noqa: E501

    The version of the OpenAPI document: v1.0.1
    Contact: support@ory.sh
    Generated by: https://openapi-generator.tech
"""


import sys
import unittest

import ory_client
from ory_client.model.authenticator_assurance_level import AuthenticatorAssuranceLevel
from ory_client.model.identity_credentials_type import IdentityCredentialsType
from ory_client.model.o_auth2_login_request import OAuth2LoginRequest
from ory_client.model.ui_container import UiContainer
globals()['AuthenticatorAssuranceLevel'] = AuthenticatorAssuranceLevel
globals()['IdentityCredentialsType'] = IdentityCredentialsType
globals()['OAuth2LoginRequest'] = OAuth2LoginRequest
globals()['UiContainer'] = UiContainer
from ory_client.model.login_flow import LoginFlow


class TestLoginFlow(unittest.TestCase):
    """LoginFlow unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testLoginFlow(self):
        """Test LoginFlow"""
        # FIXME: construct object with mandatory attributes with example values
        # model = LoginFlow()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
