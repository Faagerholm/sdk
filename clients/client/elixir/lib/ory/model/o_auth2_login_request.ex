# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.OAuth2LoginRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :challenge,
    :client,
    :oidc_context,
    :request_url,
    :requested_access_token_audience,
    :requested_scope,
    :session_id,
    :skip,
    :subject
  ]

  @type t :: %__MODULE__{
    :challenge => String.t,
    :client => Ory.Model.OAuth2Client.t,
    :oidc_context => Ory.Model.OAuth2ConsentRequestOpenIdConnectContext.t | nil,
    :request_url => String.t,
    :requested_access_token_audience => [String.t] | nil,
    :requested_scope => [String.t] | nil,
    :session_id => String.t | nil,
    :skip => boolean(),
    :subject => String.t
  }

  alias Ory.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:client, :struct, Ory.Model.OAuth2Client)
     |> Deserializer.deserialize(:oidc_context, :struct, Ory.Model.OAuth2ConsentRequestOpenIdConnectContext)
  end
end

