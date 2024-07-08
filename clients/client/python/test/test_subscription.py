# coding: utf-8

"""
    Ory APIs

    Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

    The version of the OpenAPI document: v1.13.3
    Contact: support@ory.sh
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from ory_client.models.subscription import Subscription

class TestSubscription(unittest.TestCase):
    """Subscription unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> Subscription:
        """Test Subscription
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `Subscription`
        """
        model = Subscription()
        if include_optional:
            return Subscription(
                created_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                currency = 'usd',
                current_interval = 'monthly',
                current_plan = '',
                current_plan_details = ory_client.models.plan_details.PlanDetails(
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
                    version = 56, ),
                customer_id = '',
                id = '',
                interval_changes_to = '',
                ongoing_stripe_checkout_id = '',
                payed_until = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                plan_changes_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                plan_changes_to = '',
                status = '',
                stripe_checkout_expires_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                updated_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f')
            )
        else:
            return Subscription(
                created_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                currency = 'usd',
                current_interval = 'monthly',
                current_plan = '',
                customer_id = '',
                id = '',
                interval_changes_to = '',
                payed_until = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
                plan_changes_to = '',
                status = '',
                updated_at = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'),
        )
        """

    def testSubscription(self):
        """Test Subscription"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
