# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.RecoveryCodeForIdentity do
  @moduledoc """
  Used when an administrator creates a recovery code for an identity.
  """

  @derive Jason.Encoder
  defstruct [
    :expires_at,
    :recovery_code,
    :recovery_link
  ]

  @type t :: %__MODULE__{
    :expires_at => DateTime.t | nil,
    :recovery_code => String.t,
    :recovery_link => String.t
  }

  alias Ory.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:expires_at, :datetime, nil)
  end
end

