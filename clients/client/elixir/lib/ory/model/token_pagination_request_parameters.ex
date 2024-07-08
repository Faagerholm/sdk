# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.TokenPaginationRequestParameters do
  @moduledoc """
  The `Link` HTTP header contains multiple links (`first`, `next`, `last`, `previous`) formatted as: `<https://{project-slug}.projects.oryapis.com/admin/clients?page_size={limit}&page_token={offset}>; rel=\"{page}\"`  For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination).
  """

  @derive Jason.Encoder
  defstruct [
    :page_size,
    :page_token
  ]

  @type t :: %__MODULE__{
    :page_size => integer() | nil,
    :page_token => String.t | nil
  }

  def decode(value) do
    value
  end
end

