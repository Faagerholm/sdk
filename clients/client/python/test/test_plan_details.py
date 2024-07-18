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

from ory_client.models.plan_details import PlanDetails

class TestPlanDetails(unittest.TestCase):
    """PlanDetails unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> PlanDetails:
        """Test PlanDetails
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `PlanDetails`
        """
        model = PlanDetails()
        if include_optional:
            return PlanDetails(
                base_fee_monthly = 56,
                base_fee_yearly = 56,
                custom = True,
                description = '',
                features = {
                    'key' : ory_client.models.generic_usage_is_the_generic_usage_type_that_can_be_used_for_any_feature/.GenericUsage is the generic usage type that can be used for any feature.(
                        additional_price = ory_client.models.money.Money(
                            cents = 56, 
                            string = '', 
                            unit = '', ), 
                        included_usage = 56, )
                    },
                latest = True,
                name = '',
                version = 56
            )
        else:
            return PlanDetails(
                base_fee_monthly = 56,
                base_fee_yearly = 56,
                custom = True,
                description = '',
                features = {
                    'key' : ory_client.models.generic_usage_is_the_generic_usage_type_that_can_be_used_for_any_feature/.GenericUsage is the generic usage type that can be used for any feature.(
                        additional_price = ory_client.models.money.Money(
                            cents = 56, 
                            string = '', 
                            unit = '', ), 
                        included_usage = 56, )
                    },
                name = '',
                version = 56,
        )
        """

    def testPlanDetails(self):
        """Test PlanDetails"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
