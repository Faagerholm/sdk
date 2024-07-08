# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.MetricsDatapoint do
  @moduledoc """
  Represents a single datapoint/bucket of a time series
  """

  @derive Jason.Encoder
  defstruct [
    :count,
    :time
  ]

  @type t :: %__MODULE__{
    :count => integer(),
    :time => DateTime.t
  }

  alias Ory.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:time, :datetime, nil)
  end
end

