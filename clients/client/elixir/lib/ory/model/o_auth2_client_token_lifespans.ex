# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.OAuth2ClientTokenLifespans do
  @moduledoc """
  Lifespans of different token types issued for this OAuth 2.0 Client.
  """

  @derive [Poison.Encoder]
  defstruct [
    :authorization_code_grant_access_token_lifespan,
    :authorization_code_grant_id_token_lifespan,
    :authorization_code_grant_refresh_token_lifespan,
    :client_credentials_grant_access_token_lifespan,
    :implicit_grant_access_token_lifespan,
    :implicit_grant_id_token_lifespan,
    :jwt_bearer_grant_access_token_lifespan,
    :refresh_token_grant_access_token_lifespan,
    :refresh_token_grant_id_token_lifespan,
    :refresh_token_grant_refresh_token_lifespan
  ]

  @type t :: %__MODULE__{
    :authorization_code_grant_access_token_lifespan => String.t | nil,
    :authorization_code_grant_id_token_lifespan => String.t | nil,
    :authorization_code_grant_refresh_token_lifespan => String.t | nil,
    :client_credentials_grant_access_token_lifespan => String.t | nil,
    :implicit_grant_access_token_lifespan => String.t | nil,
    :implicit_grant_id_token_lifespan => String.t | nil,
    :jwt_bearer_grant_access_token_lifespan => String.t | nil,
    :refresh_token_grant_access_token_lifespan => String.t | nil,
    :refresh_token_grant_id_token_lifespan => String.t | nil,
    :refresh_token_grant_refresh_token_lifespan => String.t | nil
  }
end

defimpl Poison.Decoder, for: Ory.Model.OAuth2ClientTokenLifespans do
  def decode(value, _options) do
    value
  end
end

