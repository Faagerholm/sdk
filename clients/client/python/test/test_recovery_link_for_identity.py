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

from ory_client.models.recovery_link_for_identity import RecoveryLinkForIdentity

class TestRecoveryLinkForIdentity(unittest.TestCase):
    """RecoveryLinkForIdentity unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RecoveryLinkForIdentity:
        """Test RecoveryLinkForIdentity
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RecoveryLinkForIdentity`
        """
        model = RecoveryLinkForIdentity()
        if include_optional:
            return RecoveryLinkForIdentity(
                expires_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                recovery_link = ''
            )
        else:
            return RecoveryLinkForIdentity(
                recovery_link = '',
        )
        """

    def testRecoveryLinkForIdentity(self):
        """Test RecoveryLinkForIdentity"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
