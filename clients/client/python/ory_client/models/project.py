# coding: utf-8

"""
    Ory APIs

    Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

    The version of the OpenAPI document: v1.13.4
    Contact: support@ory.sh
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, Field, StrictStr, field_validator
from typing import Any, ClassVar, Dict, List, Optional
from ory_client.models.project_cors import ProjectCors
from ory_client.models.project_services import ProjectServices
from typing import Optional, Set
from typing_extensions import Self

class Project(BaseModel):
    """
    Project
    """ # noqa: E501
    cors_admin: Optional[ProjectCors] = None
    cors_public: Optional[ProjectCors] = None
    environment: StrictStr = Field(description="The environment of the project. prod Production stage Staging dev Development")
    home_region: StrictStr = Field(description="The project home region.  This is used to set where the project data is stored and where the project's endpoints are located. eu-central EUCentral us-east USEast us-west USWest global Global")
    id: StrictStr = Field(description="The project's ID.")
    name: StrictStr = Field(description="The name of the project.")
    revision_id: StrictStr = Field(description="The configuration revision ID.")
    services: ProjectServices
    slug: StrictStr = Field(description="The project's slug")
    state: StrictStr = Field(description="The state of the project. running Running halted Halted deleted Deleted")
    workspace_id: Optional[StrictStr] = None
    additional_properties: Dict[str, Any] = {}
    __properties: ClassVar[List[str]] = ["cors_admin", "cors_public", "environment", "home_region", "id", "name", "revision_id", "services", "slug", "state", "workspace_id"]

    @field_validator('environment')
    def environment_validate_enum(cls, value):
        """Validates the enum"""
        if value not in set(['prod', 'stage', 'dev']):
            raise ValueError("must be one of enum values ('prod', 'stage', 'dev')")
        return value

    @field_validator('home_region')
    def home_region_validate_enum(cls, value):
        """Validates the enum"""
        if value not in set(['eu-central', 'us-east', 'us-west', 'global']):
            raise ValueError("must be one of enum values ('eu-central', 'us-east', 'us-west', 'global')")
        return value

    @field_validator('state')
    def state_validate_enum(cls, value):
        """Validates the enum"""
        if value not in set(['running', 'halted', 'deleted']):
            raise ValueError("must be one of enum values ('running', 'halted', 'deleted')")
        return value

    model_config = ConfigDict(
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
    )


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of Project from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        * OpenAPI `readOnly` fields are excluded.
        * OpenAPI `readOnly` fields are excluded.
        * OpenAPI `readOnly` fields are excluded.
        * OpenAPI `readOnly` fields are excluded.
        * Fields in `self.additional_properties` are added to the output dict.
        """
        excluded_fields: Set[str] = set([
            "id",
            "revision_id",
            "slug",
            "state",
            "additional_properties",
        ])

        _dict = self.model_dump(
            by_alias=True,
            exclude=excluded_fields,
            exclude_none=True,
        )
        # override the default output from pydantic by calling `to_dict()` of cors_admin
        if self.cors_admin:
            _dict['cors_admin'] = self.cors_admin.to_dict()
        # override the default output from pydantic by calling `to_dict()` of cors_public
        if self.cors_public:
            _dict['cors_public'] = self.cors_public.to_dict()
        # override the default output from pydantic by calling `to_dict()` of services
        if self.services:
            _dict['services'] = self.services.to_dict()
        # puts key-value pairs in additional_properties in the top level
        if self.additional_properties is not None:
            for _key, _value in self.additional_properties.items():
                _dict[_key] = _value

        # set to None if workspace_id (nullable) is None
        # and model_fields_set contains the field
        if self.workspace_id is None and "workspace_id" in self.model_fields_set:
            _dict['workspace_id'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of Project from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "cors_admin": ProjectCors.from_dict(obj["cors_admin"]) if obj.get("cors_admin") is not None else None,
            "cors_public": ProjectCors.from_dict(obj["cors_public"]) if obj.get("cors_public") is not None else None,
            "environment": obj.get("environment"),
            "home_region": obj.get("home_region"),
            "id": obj.get("id"),
            "name": obj.get("name"),
            "revision_id": obj.get("revision_id"),
            "services": ProjectServices.from_dict(obj["services"]) if obj.get("services") is not None else None,
            "slug": obj.get("slug"),
            "state": obj.get("state"),
            "workspace_id": obj.get("workspace_id")
        })
        # store additional fields in additional_properties
        for _key in obj.keys():
            if _key not in cls.__properties:
                _obj.additional_properties[_key] = obj.get(_key)

        return _obj


