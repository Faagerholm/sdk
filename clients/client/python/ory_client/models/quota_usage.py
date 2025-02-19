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
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictInt, StrictStr, field_validator
from typing import Any, ClassVar, Dict, List
from typing import Optional, Set
from typing_extensions import Self

class QuotaUsage(BaseModel):
    """
    QuotaUsage
    """ # noqa: E501
    additional_price: StrictStr = Field(description="The additional price per unit in cents.")
    can_use_more: StrictBool
    feature: StrictStr = Field(description=" production_projects ProductionProjects staging_projects StagingProjects development_projects DevelopmentProjects daily_active_users DailyActiveUsers custom_domains CustomDomains event_streams EventStreams event_stream_events EventStreamEvents sla SLA collaborator_seats CollaboratorSeats edge_cache EdgeCache branding_themes BrandingThemes zendesk_support ZendeskSupport project_metrics ProjectMetrics project_metrics_time_window ProjectMetricsTimeWindow project_metrics_events_history ProjectMetricsEventsHistory organizations Organizations rop_grant ResourceOwnerPasswordGrant concierge_onboarding ConciergeOnboarding credit Credit data_location_global DataLocationGlobal data_location_us DataLocationUS m2m_token_issuance M2MTokenIssuance permission_checks PermissionChecks data_location_regional DataLocationRegional  Required Features rate_limit_tier RateLimitTier session_rate_limit_tier RateLimitTierSessions identities_list_rate_limit_tier RateLimitTierIdentitiesList permission_checks_rate_limit_tier RateLimitTierPermissionChecks oauth2_introspect_rate_limit_tier RateLimitTierOAuth2Introspect")
    feature_available: StrictBool
    included: StrictInt
    used: StrictInt
    additional_properties: Dict[str, Any] = {}
    __properties: ClassVar[List[str]] = ["additional_price", "can_use_more", "feature", "feature_available", "included", "used"]

    @field_validator('feature')
    def feature_validate_enum(cls, value):
        """Validates the enum"""
        if value not in set(['production_projects', 'staging_projects', 'development_projects', 'daily_active_users', 'custom_domains', 'event_streams', 'event_stream_events', 'sla', 'collaborator_seats', 'edge_cache', 'branding_themes', 'zendesk_support', 'project_metrics', 'project_metrics_time_window', 'project_metrics_events_history', 'organizations', 'rop_grant', 'concierge_onboarding', 'credit', 'data_location_global', 'data_location_us', 'm2m_token_issuance', 'permission_checks', 'data_location_regional', 'rate_limit_tier', 'session_rate_limit_tier', 'identities_list_rate_limit_tier', 'permission_checks_rate_limit_tier', 'oauth2_introspect_rate_limit_tier']):
            raise ValueError("must be one of enum values ('production_projects', 'staging_projects', 'development_projects', 'daily_active_users', 'custom_domains', 'event_streams', 'event_stream_events', 'sla', 'collaborator_seats', 'edge_cache', 'branding_themes', 'zendesk_support', 'project_metrics', 'project_metrics_time_window', 'project_metrics_events_history', 'organizations', 'rop_grant', 'concierge_onboarding', 'credit', 'data_location_global', 'data_location_us', 'm2m_token_issuance', 'permission_checks', 'data_location_regional', 'rate_limit_tier', 'session_rate_limit_tier', 'identities_list_rate_limit_tier', 'permission_checks_rate_limit_tier', 'oauth2_introspect_rate_limit_tier')")
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
        """Create an instance of QuotaUsage from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        * Fields in `self.additional_properties` are added to the output dict.
        """
        excluded_fields: Set[str] = set([
            "additional_properties",
        ])

        _dict = self.model_dump(
            by_alias=True,
            exclude=excluded_fields,
            exclude_none=True,
        )
        # puts key-value pairs in additional_properties in the top level
        if self.additional_properties is not None:
            for _key, _value in self.additional_properties.items():
                _dict[_key] = _value

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of QuotaUsage from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "additional_price": obj.get("additional_price"),
            "can_use_more": obj.get("can_use_more"),
            "feature": obj.get("feature"),
            "feature_available": obj.get("feature_available"),
            "included": obj.get("included"),
            "used": obj.get("used")
        })
        # store additional fields in additional_properties
        for _key in obj.keys():
            if _key not in cls.__properties:
                _obj.additional_properties[_key] = obj.get(_key)

        return _obj


