# coding: utf-8

"""
    Ory APIs

    Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

    The version of the OpenAPI document: v1.14.4
    Contact: support@ory.sh
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import json
import pprint
from pydantic import BaseModel, ConfigDict, Field, StrictStr, ValidationError, field_validator
from typing import Any, List, Optional
from ory_client.models.update_verification_flow_with_code_method import UpdateVerificationFlowWithCodeMethod
from ory_client.models.update_verification_flow_with_link_method import UpdateVerificationFlowWithLinkMethod
from pydantic import StrictStr, Field
from typing import Union, List, Set, Optional, Dict
from typing_extensions import Literal, Self

UPDATEVERIFICATIONFLOWBODY_ONE_OF_SCHEMAS = ["UpdateVerificationFlowWithCodeMethod", "UpdateVerificationFlowWithLinkMethod"]

class UpdateVerificationFlowBody(BaseModel):
    """
    Update Verification Flow Request Body
    """
    # data type: UpdateVerificationFlowWithLinkMethod
    oneof_schema_1_validator: Optional[UpdateVerificationFlowWithLinkMethod] = None
    # data type: UpdateVerificationFlowWithCodeMethod
    oneof_schema_2_validator: Optional[UpdateVerificationFlowWithCodeMethod] = None
    actual_instance: Optional[Union[UpdateVerificationFlowWithCodeMethod, UpdateVerificationFlowWithLinkMethod]] = None
    one_of_schemas: Set[str] = { "UpdateVerificationFlowWithCodeMethod", "UpdateVerificationFlowWithLinkMethod" }

    model_config = ConfigDict(
        validate_assignment=True,
        protected_namespaces=(),
    )


    discriminator_value_class_map: Dict[str, str] = {
    }

    def __init__(self, *args, **kwargs) -> None:
        if args:
            if len(args) > 1:
                raise ValueError("If a position argument is used, only 1 is allowed to set `actual_instance`")
            if kwargs:
                raise ValueError("If a position argument is used, keyword arguments cannot be used.")
            super().__init__(actual_instance=args[0])
        else:
            super().__init__(**kwargs)

    @field_validator('actual_instance')
    def actual_instance_must_validate_oneof(cls, v):
        instance = UpdateVerificationFlowBody.model_construct()
        error_messages = []
        match = 0
        # validate data type: UpdateVerificationFlowWithLinkMethod
        if not isinstance(v, UpdateVerificationFlowWithLinkMethod):
            error_messages.append(f"Error! Input type `{type(v)}` is not `UpdateVerificationFlowWithLinkMethod`")
        else:
            match += 1
        # validate data type: UpdateVerificationFlowWithCodeMethod
        if not isinstance(v, UpdateVerificationFlowWithCodeMethod):
            error_messages.append(f"Error! Input type `{type(v)}` is not `UpdateVerificationFlowWithCodeMethod`")
        else:
            match += 1
        if match > 1:
            # more than 1 match
            raise ValueError("Multiple matches found when setting `actual_instance` in UpdateVerificationFlowBody with oneOf schemas: UpdateVerificationFlowWithCodeMethod, UpdateVerificationFlowWithLinkMethod. Details: " + ", ".join(error_messages))
        elif match == 0:
            # no match
            raise ValueError("No match found when setting `actual_instance` in UpdateVerificationFlowBody with oneOf schemas: UpdateVerificationFlowWithCodeMethod, UpdateVerificationFlowWithLinkMethod. Details: " + ", ".join(error_messages))
        else:
            return v

    @classmethod
    def from_dict(cls, obj: Union[str, Dict[str, Any]]) -> Self:
        return cls.from_json(json.dumps(obj))

    @classmethod
    def from_json(cls, json_str: str) -> Self:
        """Returns the object represented by the json string"""
        instance = cls.model_construct()
        error_messages = []
        match = 0

        # use oneOf discriminator to lookup the data type
        _data_type = json.loads(json_str).get("method")
        if not _data_type:
            raise ValueError("Failed to lookup data type from the field `method` in the input.")

        # check if data type is `UpdateVerificationFlowWithCodeMethod`
        if _data_type == "code":
            instance.actual_instance = UpdateVerificationFlowWithCodeMethod.from_json(json_str)
            return instance

        # check if data type is `UpdateVerificationFlowWithLinkMethod`
        if _data_type == "link":
            instance.actual_instance = UpdateVerificationFlowWithLinkMethod.from_json(json_str)
            return instance

        # check if data type is `UpdateVerificationFlowWithCodeMethod`
        if _data_type == "updateVerificationFlowWithCodeMethod":
            instance.actual_instance = UpdateVerificationFlowWithCodeMethod.from_json(json_str)
            return instance

        # check if data type is `UpdateVerificationFlowWithLinkMethod`
        if _data_type == "updateVerificationFlowWithLinkMethod":
            instance.actual_instance = UpdateVerificationFlowWithLinkMethod.from_json(json_str)
            return instance

        # deserialize data into UpdateVerificationFlowWithLinkMethod
        try:
            instance.actual_instance = UpdateVerificationFlowWithLinkMethod.from_json(json_str)
            match += 1
        except (ValidationError, ValueError) as e:
            error_messages.append(str(e))
        # deserialize data into UpdateVerificationFlowWithCodeMethod
        try:
            instance.actual_instance = UpdateVerificationFlowWithCodeMethod.from_json(json_str)
            match += 1
        except (ValidationError, ValueError) as e:
            error_messages.append(str(e))

        if match > 1:
            # more than 1 match
            raise ValueError("Multiple matches found when deserializing the JSON string into UpdateVerificationFlowBody with oneOf schemas: UpdateVerificationFlowWithCodeMethod, UpdateVerificationFlowWithLinkMethod. Details: " + ", ".join(error_messages))
        elif match == 0:
            # no match
            raise ValueError("No match found when deserializing the JSON string into UpdateVerificationFlowBody with oneOf schemas: UpdateVerificationFlowWithCodeMethod, UpdateVerificationFlowWithLinkMethod. Details: " + ", ".join(error_messages))
        else:
            return instance

    def to_json(self) -> str:
        """Returns the JSON representation of the actual instance"""
        if self.actual_instance is None:
            return "null"

        if hasattr(self.actual_instance, "to_json") and callable(self.actual_instance.to_json):
            return self.actual_instance.to_json()
        else:
            return json.dumps(self.actual_instance)

    def to_dict(self) -> Optional[Union[Dict[str, Any], UpdateVerificationFlowWithCodeMethod, UpdateVerificationFlowWithLinkMethod]]:
        """Returns the dict representation of the actual instance"""
        if self.actual_instance is None:
            return None

        if hasattr(self.actual_instance, "to_dict") and callable(self.actual_instance.to_dict):
            return self.actual_instance.to_dict()
        else:
            # primitive type
            return self.actual_instance

    def to_str(self) -> str:
        """Returns the string representation of the actual instance"""
        return pprint.pformat(self.model_dump())


