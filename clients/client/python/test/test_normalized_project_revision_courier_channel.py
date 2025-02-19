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

from ory_client.models.normalized_project_revision_courier_channel import NormalizedProjectRevisionCourierChannel

class TestNormalizedProjectRevisionCourierChannel(unittest.TestCase):
    """NormalizedProjectRevisionCourierChannel unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> NormalizedProjectRevisionCourierChannel:
        """Test NormalizedProjectRevisionCourierChannel
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `NormalizedProjectRevisionCourierChannel`
        """
        model = NormalizedProjectRevisionCourierChannel()
        if include_optional:
            return NormalizedProjectRevisionCourierChannel(
                channel_id = '',
                created_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                request_config_auth_config_api_key_in = 'header',
                request_config_auth_config_api_key_name = '',
                request_config_auth_config_api_key_value = '',
                request_config_auth_config_basic_auth_password = '',
                request_config_auth_config_basic_auth_user = '',
                request_config_auth_type = 'basic_auth',
                request_config_body = '',
                request_config_headers = ory_client.models.null_json_raw_message.nullJsonRawMessage(),
                request_config_method = 'POST',
                request_config_url = '',
                updated_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f')
            )
        else:
            return NormalizedProjectRevisionCourierChannel(
                channel_id = '',
                request_config_body = '',
                request_config_method = 'POST',
        )
        """

    def testNormalizedProjectRevisionCourierChannel(self):
        """Test NormalizedProjectRevisionCourierChannel"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
