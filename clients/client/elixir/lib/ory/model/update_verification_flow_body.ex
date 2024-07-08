# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.UpdateVerificationFlowBody do
  @moduledoc """
  Update Verification Flow Request Body
  """

  @derive Jason.Encoder
  defstruct [
    :csrf_token,
    :email,
    :method,
    :transient_payload,
    :code
  ]

  @type t :: %__MODULE__{
    :csrf_token => String.t | nil,
    :email => String.t,
    :method => String.t,
    :transient_payload => map() | nil,
    :code => String.t | nil
  }

  def decode(value) do
    value
  end
end

