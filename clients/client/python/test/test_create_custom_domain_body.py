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

from ory_client.models.create_custom_domain_body import CreateCustomDomainBody

class TestCreateCustomDomainBody(unittest.TestCase):
    """CreateCustomDomainBody unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> CreateCustomDomainBody:
        """Test CreateCustomDomainBody
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `CreateCustomDomainBody`
        """
        model = CreateCustomDomainBody()
        if include_optional:
            return CreateCustomDomainBody(
                cookie_domain = '',
                cors_allowed_origins = [
                    ''
                    ],
                cors_enabled = True,
                custom_ui_base_url = '',
                hostname = ''
            )
        else:
            return CreateCustomDomainBody(
        )
        """

    def testCreateCustomDomainBody(self):
        """Test CreateCustomDomainBody"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
