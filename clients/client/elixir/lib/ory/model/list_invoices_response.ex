# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.ListInvoicesResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :buckets,
    :has_next_page,
    :next_page_token
  ]

  @type t :: %__MODULE__{
    :buckets => [Ory.Model.BillingPeriodBucket.t],
    :has_next_page => boolean(),
    :next_page_token => String.t
  }

  alias Ory.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:buckets, :list, Ory.Model.BillingPeriodBucket)
  end
end

