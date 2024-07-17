# coding: utf-8

"""
    Ory APIs

    Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

    The version of the OpenAPI document: v1.14.1
    Contact: support@ory.sh
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import json
import pprint
from pydantic import BaseModel, ConfigDict, Field, StrictStr, ValidationError, field_validator
from typing import Any, List, Optional
from ory_client.models.continue_with_recovery_ui import ContinueWithRecoveryUi
from ory_client.models.continue_with_redirect_browser_to import ContinueWithRedirectBrowserTo
from ory_client.models.continue_with_set_ory_session_token import ContinueWithSetOrySessionToken
from ory_client.models.continue_with_settings_ui import ContinueWithSettingsUi
from ory_client.models.continue_with_verification_ui import ContinueWithVerificationUi
from pydantic import StrictStr, Field
from typing import Union, List, Set, Optional, Dict
from typing_extensions import Literal, Self

CONTINUEWITH_ONE_OF_SCHEMAS = ["ContinueWithRecoveryUi", "ContinueWithRedirectBrowserTo", "ContinueWithSetOrySessionToken", "ContinueWithSettingsUi", "ContinueWithVerificationUi"]

class ContinueWith(BaseModel):
    """
    ContinueWith
    """
    # data type: ContinueWithVerificationUi
    oneof_schema_1_validator: Optional[ContinueWithVerificationUi] = None
    # data type: ContinueWithSetOrySessionToken
    oneof_schema_2_validator: Optional[ContinueWithSetOrySessionToken] = None
    # data type: ContinueWithSettingsUi
    oneof_schema_3_validator: Optional[ContinueWithSettingsUi] = None
    # data type: ContinueWithRecoveryUi
    oneof_schema_4_validator: Optional[ContinueWithRecoveryUi] = None
    # data type: ContinueWithRedirectBrowserTo
    oneof_schema_5_validator: Optional[ContinueWithRedirectBrowserTo] = None
    actual_instance: Optional[Union[ContinueWithRecoveryUi, ContinueWithRedirectBrowserTo, ContinueWithSetOrySessionToken, ContinueWithSettingsUi, ContinueWithVerificationUi]] = None
    one_of_schemas: Set[str] = { "ContinueWithRecoveryUi", "ContinueWithRedirectBrowserTo", "ContinueWithSetOrySessionToken", "ContinueWithSettingsUi", "ContinueWithVerificationUi" }

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
        instance = ContinueWith.model_construct()
        error_messages = []
        match = 0
        # validate data type: ContinueWithVerificationUi
        if not isinstance(v, ContinueWithVerificationUi):
            error_messages.append(f"Error! Input type `{type(v)}` is not `ContinueWithVerificationUi`")
        else:
            match += 1
        # validate data type: ContinueWithSetOrySessionToken
        if not isinstance(v, ContinueWithSetOrySessionToken):
            error_messages.append(f"Error! Input type `{type(v)}` is not `ContinueWithSetOrySessionToken`")
        else:
            match += 1
        # validate data type: ContinueWithSettingsUi
        if not isinstance(v, ContinueWithSettingsUi):
            error_messages.append(f"Error! Input type `{type(v)}` is not `ContinueWithSettingsUi`")
        else:
            match += 1
        # validate data type: ContinueWithRecoveryUi
        if not isinstance(v, ContinueWithRecoveryUi):
            error_messages.append(f"Error! Input type `{type(v)}` is not `ContinueWithRecoveryUi`")
        else:
            match += 1
        # validate data type: ContinueWithRedirectBrowserTo
        if not isinstance(v, ContinueWithRedirectBrowserTo):
            error_messages.append(f"Error! Input type `{type(v)}` is not `ContinueWithRedirectBrowserTo`")
        else:
            match += 1
        if match > 1:
            # more than 1 match
            raise ValueError("Multiple matches found when setting `actual_instance` in ContinueWith with oneOf schemas: ContinueWithRecoveryUi, ContinueWithRedirectBrowserTo, ContinueWithSetOrySessionToken, ContinueWithSettingsUi, ContinueWithVerificationUi. Details: " + ", ".join(error_messages))
        elif match == 0:
            # no match
            raise ValueError("No match found when setting `actual_instance` in ContinueWith with oneOf schemas: ContinueWithRecoveryUi, ContinueWithRedirectBrowserTo, ContinueWithSetOrySessionToken, ContinueWithSettingsUi, ContinueWithVerificationUi. Details: " + ", ".join(error_messages))
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
        _data_type = json.loads(json_str).get("action")
        if not _data_type:
            raise ValueError("Failed to lookup data type from the field `action` in the input.")

        # check if data type is `ContinueWithRedirectBrowserTo`
        if _data_type == "redirect_browser_to":
            instance.actual_instance = ContinueWithRedirectBrowserTo.from_json(json_str)
            return instance

        # check if data type is `ContinueWithSetOrySessionToken`
        if _data_type == "set_ory_session_token":
            instance.actual_instance = ContinueWithSetOrySessionToken.from_json(json_str)
            return instance

        # check if data type is `ContinueWithRecoveryUi`
        if _data_type == "show_recovery_ui":
            instance.actual_instance = ContinueWithRecoveryUi.from_json(json_str)
            return instance

        # check if data type is `ContinueWithSettingsUi`
        if _data_type == "show_settings_ui":
            instance.actual_instance = ContinueWithSettingsUi.from_json(json_str)
            return instance

        # check if data type is `ContinueWithVerificationUi`
        if _data_type == "show_verification_ui":
            instance.actual_instance = ContinueWithVerificationUi.from_json(json_str)
            return instance

        # check if data type is `ContinueWithRecoveryUi`
        if _data_type == "continueWithRecoveryUi":
            instance.actual_instance = ContinueWithRecoveryUi.from_json(json_str)
            return instance

        # check if data type is `ContinueWithRedirectBrowserTo`
        if _data_type == "continueWithRedirectBrowserTo":
            instance.actual_instance = ContinueWithRedirectBrowserTo.from_json(json_str)
            return instance

        # check if data type is `ContinueWithSetOrySessionToken`
        if _data_type == "continueWithSetOrySessionToken":
            instance.actual_instance = ContinueWithSetOrySessionToken.from_json(json_str)
            return instance

        # check if data type is `ContinueWithSettingsUi`
        if _data_type == "continueWithSettingsUi":
            instance.actual_instance = ContinueWithSettingsUi.from_json(json_str)
            return instance

        # check if data type is `ContinueWithVerificationUi`
        if _data_type == "continueWithVerificationUi":
            instance.actual_instance = ContinueWithVerificationUi.from_json(json_str)
            return instance

        # deserialize data into ContinueWithVerificationUi
        try:
            instance.actual_instance = ContinueWithVerificationUi.from_json(json_str)
            match += 1
        except (ValidationError, ValueError) as e:
            error_messages.append(str(e))
        # deserialize data into ContinueWithSetOrySessionToken
        try:
            instance.actual_instance = ContinueWithSetOrySessionToken.from_json(json_str)
            match += 1
        except (ValidationError, ValueError) as e:
            error_messages.append(str(e))
        # deserialize data into ContinueWithSettingsUi
        try:
            instance.actual_instance = ContinueWithSettingsUi.from_json(json_str)
            match += 1
        except (ValidationError, ValueError) as e:
            error_messages.append(str(e))
        # deserialize data into ContinueWithRecoveryUi
        try:
            instance.actual_instance = ContinueWithRecoveryUi.from_json(json_str)
            match += 1
        except (ValidationError, ValueError) as e:
            error_messages.append(str(e))
        # deserialize data into ContinueWithRedirectBrowserTo
        try:
            instance.actual_instance = ContinueWithRedirectBrowserTo.from_json(json_str)
            match += 1
        except (ValidationError, ValueError) as e:
            error_messages.append(str(e))

        if match > 1:
            # more than 1 match
            raise ValueError("Multiple matches found when deserializing the JSON string into ContinueWith with oneOf schemas: ContinueWithRecoveryUi, ContinueWithRedirectBrowserTo, ContinueWithSetOrySessionToken, ContinueWithSettingsUi, ContinueWithVerificationUi. Details: " + ", ".join(error_messages))
        elif match == 0:
            # no match
            raise ValueError("No match found when deserializing the JSON string into ContinueWith with oneOf schemas: ContinueWithRecoveryUi, ContinueWithRedirectBrowserTo, ContinueWithSetOrySessionToken, ContinueWithSettingsUi, ContinueWithVerificationUi. Details: " + ", ".join(error_messages))
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

    def to_dict(self) -> Optional[Union[Dict[str, Any], ContinueWithRecoveryUi, ContinueWithRedirectBrowserTo, ContinueWithSetOrySessionToken, ContinueWithSettingsUi, ContinueWithVerificationUi]]:
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


