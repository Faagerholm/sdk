"""
    Ory APIs

    Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers.   # noqa: E501

    The version of the OpenAPI document: v1.1.47
    Contact: support@ory.sh
    Generated by: https://openapi-generator.tech
"""


import unittest

import ory_client
from ory_client.api.project_api import ProjectApi  # noqa: E501


class TestProjectApi(unittest.TestCase):
    """ProjectApi unit test stubs"""

    def setUp(self):
        self.api = ProjectApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_create_project(self):
        """Test case for create_project

        Create a Project  # noqa: E501
        """
        pass

    def test_create_project_api_key(self):
        """Test case for create_project_api_key

        Create project API token  # noqa: E501
        """
        pass

    def test_delete_project_api_key(self):
        """Test case for delete_project_api_key

        Delete project API token  # noqa: E501
        """
        pass

    def test_get_active_project_in_console(self):
        """Test case for get_active_project_in_console

        Returns the Ory Network Project selected in the Ory Network Console  # noqa: E501
        """
        pass

    def test_get_project(self):
        """Test case for get_project

        Get a Project  # noqa: E501
        """
        pass

    def test_get_project_members(self):
        """Test case for get_project_members

        Get all members associated with this project  # noqa: E501
        """
        pass

    def test_get_project_metrics(self):
        """Test case for get_project_metrics

        """
        pass

    def test_list_project_api_keys(self):
        """Test case for list_project_api_keys

        List a project's API Tokens  # noqa: E501
        """
        pass

    def test_list_projects(self):
        """Test case for list_projects

        List All Projects  # noqa: E501
        """
        pass

    def test_patch_project(self):
        """Test case for patch_project

        Patch an Ory Network Project Configuration  # noqa: E501
        """
        pass

    def test_purge_project(self):
        """Test case for purge_project

        Irrecoverably purge a project  # noqa: E501
        """
        pass

    def test_remove_project_member(self):
        """Test case for remove_project_member

        Remove a member associated with this project  # noqa: E501
        """
        pass

    def test_set_active_project_in_console(self):
        """Test case for set_active_project_in_console

        Sets the Ory Network Project active in the Ory Network Console  # noqa: E501
        """
        pass

    def test_set_project(self):
        """Test case for set_project

        Update an Ory Network Project Configuration  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
