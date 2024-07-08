# coding: utf-8

"""
    Ory APIs

    Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

    The version of the OpenAPI document: v1.13.4
    Contact: support@ory.sh
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from ory_client.models.successful_project_update import SuccessfulProjectUpdate

class TestSuccessfulProjectUpdate(unittest.TestCase):
    """SuccessfulProjectUpdate unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SuccessfulProjectUpdate:
        """Test SuccessfulProjectUpdate
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SuccessfulProjectUpdate`
        """
        model = SuccessfulProjectUpdate()
        if include_optional:
            return SuccessfulProjectUpdate(
                project = ory_client.models.project.project(
                    cors_admin = ory_client.models.project_cors.projectCors(
                        enabled = True, 
                        origins = [
                            ''
                            ], ), 
                    cors_public = ory_client.models.project_cors.projectCors(
                        enabled = True, ), 
                    environment = 'prod', 
                    home_region = 'eu-central', 
                    id = '', 
                    name = '', 
                    revision_id = '', 
                    services = ory_client.models.project_services.projectServices(
                        identity = ory_client.models.project_service_identity.projectServiceIdentity(
                            config = ory_client.models.config.config(), ), 
                        oauth2 = ory_client.models.project_service_o_auth2.projectServiceOAuth2(
                            config = ory_client.models.config.config(), ), 
                        permission = ory_client.models.project_service_permission.projectServicePermission(
                            config = ory_client.models.config.config(), ), ), 
                    slug = '', 
                    state = 'running', 
                    workspace_id = '', ),
                warnings = [
                    ory_client.models.warning.Warning(
                        code = 56, 
                        message = '', )
                    ]
            )
        else:
            return SuccessfulProjectUpdate(
                project = ory_client.models.project.project(
                    cors_admin = ory_client.models.project_cors.projectCors(
                        enabled = True, 
                        origins = [
                            ''
                            ], ), 
                    cors_public = ory_client.models.project_cors.projectCors(
                        enabled = True, ), 
                    environment = 'prod', 
                    home_region = 'eu-central', 
                    id = '', 
                    name = '', 
                    revision_id = '', 
                    services = ory_client.models.project_services.projectServices(
                        identity = ory_client.models.project_service_identity.projectServiceIdentity(
                            config = ory_client.models.config.config(), ), 
                        oauth2 = ory_client.models.project_service_o_auth2.projectServiceOAuth2(
                            config = ory_client.models.config.config(), ), 
                        permission = ory_client.models.project_service_permission.projectServicePermission(
                            config = ory_client.models.config.config(), ), ), 
                    slug = '', 
                    state = 'running', 
                    workspace_id = '', ),
                warnings = [
                    ory_client.models.warning.Warning(
                        code = 56, 
                        message = '', )
                    ],
        )
        """

    def testSuccessfulProjectUpdate(self):
        """Test SuccessfulProjectUpdate"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
