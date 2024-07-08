# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.MemberInvite do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :id,
    :invitee_email,
    :invitee_id,
    :owner_email,
    :owner_id,
    :project_id,
    :status,
    :updated_at,
    :workspace_id
  ]

  @type t :: %__MODULE__{
    :created_at => DateTime.t,
    :id => String.t,
    :invitee_email => String.t,
    :invitee_id => String.t | nil,
    :owner_email => String.t,
    :owner_id => String.t,
    :project_id => String.t | nil,
    :status => String.t,
    :updated_at => DateTime.t,
    :workspace_id => String.t | nil
  }

  alias Ory.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_at, :datetime, nil)
     |> Deserializer.deserialize(:updated_at, :datetime, nil)
  end
end

