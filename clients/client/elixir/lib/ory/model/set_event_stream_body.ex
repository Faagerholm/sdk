# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.SetEventStreamBody do
  @moduledoc """
  Update Event Stream Body
  """

  @derive Jason.Encoder
  defstruct [
    :role_arn,
    :topic_arn,
    :type
  ]

  @type t :: %__MODULE__{
    :role_arn => String.t,
    :topic_arn => String.t,
    :type => String.t
  }

  def decode(value) do
    value
  end
end

