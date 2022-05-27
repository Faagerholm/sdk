# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Client.Api.Metadata do
  @moduledoc """
  API calls for all endpoints tagged `Metadata`.
  """

  alias Client.Connection
  import Client.RequestBuilder


  @doc """
  Return Running Software Version.
  This endpoint returns the version of Ory Kratos.  If the service supports TLS Edge Termination, this endpoint does not require the `X-Forwarded-Proto` header to be set.  Be aware that if you are running multiple nodes of this service, the version will never refer to the cluster state, only to a single instance.

  ## Parameters

  - connection (Client.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, Client.Model.InlineResponse2001.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_version(Tesla.Env.client, keyword()) :: {:ok, Client.Model.InlineResponse2001.t} | {:error, Tesla.Env.t}
  def get_version(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/api/kratos/public/version")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %Client.Model.InlineResponse2001{}}
    ])
  end

  @doc """
  Check HTTP Server Status
  This endpoint returns a HTTP 200 status code when Ory Kratos is accepting incoming HTTP requests. This status does currently not include checks whether the database connection is working.  If the service supports TLS Edge Termination, this endpoint does not require the `X-Forwarded-Proto` header to be set.  Be aware that if you are running multiple nodes of this service, the health status will never refer to the cluster state, only to a single instance.

  ## Parameters

  - connection (Client.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, Client.Model.InlineResponse200.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec is_alive(Tesla.Env.client, keyword()) :: {:ok, Client.Model.GenericError.t} | {:ok, Client.Model.InlineResponse200.t} | {:error, Tesla.Env.t}
  def is_alive(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/api/kratos/public/health/alive")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %Client.Model.InlineResponse200{}},
      { 500, %Client.Model.GenericError{}}
    ])
  end

  @doc """
  Check HTTP Server and Database Status
  This endpoint returns a HTTP 200 status code when Ory Kratos is up running and the environment dependencies (e.g. the database) are responsive as well.  If the service supports TLS Edge Termination, this endpoint does not require the `X-Forwarded-Proto` header to be set.  Be aware that if you are running multiple nodes of Ory Kratos, the health status will never refer to the cluster state, only to a single instance.

  ## Parameters

  - connection (Client.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, Client.Model.InlineResponse200.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec is_ready(Tesla.Env.client, keyword()) :: {:ok, Client.Model.InlineResponse503.t} | {:ok, Client.Model.InlineResponse200.t} | {:error, Tesla.Env.t}
  def is_ready(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/api/kratos/public/health/ready")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %Client.Model.InlineResponse200{}},
      { 503, %Client.Model.InlineResponse503{}}
    ])
  end
end
