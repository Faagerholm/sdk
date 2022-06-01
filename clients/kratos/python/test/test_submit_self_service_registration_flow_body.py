"""
    Ory Kratos API

    Documentation for all public and administrative Ory Kratos APIs. Public and administrative APIs are exposed on different ports. Public APIs can face the public internet without any protection while administrative APIs should never be exposed without prior authorization. To protect the administative API port you should use something like Nginx, Ory Oathkeeper, or any other technology capable of authorizing incoming requests.   # noqa: E501

    The version of the OpenAPI document: v0.10.1
    Contact: hi@ory.sh
    Generated by: https://openapi-generator.tech
"""


import sys
import unittest

import ory_kratos_client
from ory_kratos_client.model.submit_self_service_registration_flow_with_oidc_method_body import SubmitSelfServiceRegistrationFlowWithOidcMethodBody
from ory_kratos_client.model.submit_self_service_registration_flow_with_password_method_body import SubmitSelfServiceRegistrationFlowWithPasswordMethodBody
from ory_kratos_client.model.submit_self_service_registration_flow_with_web_authn_method_body import SubmitSelfServiceRegistrationFlowWithWebAuthnMethodBody
globals()['SubmitSelfServiceRegistrationFlowWithOidcMethodBody'] = SubmitSelfServiceRegistrationFlowWithOidcMethodBody
globals()['SubmitSelfServiceRegistrationFlowWithPasswordMethodBody'] = SubmitSelfServiceRegistrationFlowWithPasswordMethodBody
globals()['SubmitSelfServiceRegistrationFlowWithWebAuthnMethodBody'] = SubmitSelfServiceRegistrationFlowWithWebAuthnMethodBody
from ory_kratos_client.model.submit_self_service_registration_flow_body import SubmitSelfServiceRegistrationFlowBody


class TestSubmitSelfServiceRegistrationFlowBody(unittest.TestCase):
    """SubmitSelfServiceRegistrationFlowBody unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testSubmitSelfServiceRegistrationFlowBody(self):
        """Test SubmitSelfServiceRegistrationFlowBody"""
        # FIXME: construct object with mandatory attributes with example values
        # model = SubmitSelfServiceRegistrationFlowBody()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
