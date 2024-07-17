=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.14.1
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OryClient
  class PermissionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check a permission
    # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :namespace Namespace of the Relationship
    # @option opts [String] :object Object of the Relationship
    # @option opts [String] :relation Relation of the Relationship
    # @option opts [String] :subject_id SubjectID of the Relationship
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @option opts [Integer] :max_depth 
    # @return [CheckPermissionResult]
    def check_permission(opts = {})
      data, _status_code, _headers = check_permission_with_http_info(opts)
      data
    end

    # Check a permission
    # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :namespace Namespace of the Relationship
    # @option opts [String] :object Object of the Relationship
    # @option opts [String] :relation Relation of the Relationship
    # @option opts [String] :subject_id SubjectID of the Relationship
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @option opts [Integer] :max_depth 
    # @return [Array<(CheckPermissionResult, Integer, Hash)>] CheckPermissionResult data, response status code and response headers
    def check_permission_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionApi.check_permission ...'
      end
      # resource path
      local_var_path = '/relation-tuples/check/openapi'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'namespace'] = opts[:'namespace'] if !opts[:'namespace'].nil?
      query_params[:'object'] = opts[:'object'] if !opts[:'object'].nil?
      query_params[:'relation'] = opts[:'relation'] if !opts[:'relation'].nil?
      query_params[:'subject_id'] = opts[:'subject_id'] if !opts[:'subject_id'].nil?
      query_params[:'subject_set.namespace'] = opts[:'subject_set_namespace'] if !opts[:'subject_set_namespace'].nil?
      query_params[:'subject_set.object'] = opts[:'subject_set_object'] if !opts[:'subject_set_object'].nil?
      query_params[:'subject_set.relation'] = opts[:'subject_set_relation'] if !opts[:'subject_set_relation'].nil?
      query_params[:'max-depth'] = opts[:'max_depth'] if !opts[:'max_depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CheckPermissionResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"PermissionApi.check_permission",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionApi#check_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check a permission
    # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :namespace Namespace of the Relationship
    # @option opts [String] :object Object of the Relationship
    # @option opts [String] :relation Relation of the Relationship
    # @option opts [String] :subject_id SubjectID of the Relationship
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @option opts [Integer] :max_depth 
    # @return [CheckPermissionResult]
    def check_permission_or_error(opts = {})
      data, _status_code, _headers = check_permission_or_error_with_http_info(opts)
      data
    end

    # Check a permission
    # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :namespace Namespace of the Relationship
    # @option opts [String] :object Object of the Relationship
    # @option opts [String] :relation Relation of the Relationship
    # @option opts [String] :subject_id SubjectID of the Relationship
    # @option opts [String] :subject_set_namespace Namespace of the Subject Set
    # @option opts [String] :subject_set_object Object of the Subject Set
    # @option opts [String] :subject_set_relation Relation of the Subject Set
    # @option opts [Integer] :max_depth 
    # @return [Array<(CheckPermissionResult, Integer, Hash)>] CheckPermissionResult data, response status code and response headers
    def check_permission_or_error_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionApi.check_permission_or_error ...'
      end
      # resource path
      local_var_path = '/relation-tuples/check'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'namespace'] = opts[:'namespace'] if !opts[:'namespace'].nil?
      query_params[:'object'] = opts[:'object'] if !opts[:'object'].nil?
      query_params[:'relation'] = opts[:'relation'] if !opts[:'relation'].nil?
      query_params[:'subject_id'] = opts[:'subject_id'] if !opts[:'subject_id'].nil?
      query_params[:'subject_set.namespace'] = opts[:'subject_set_namespace'] if !opts[:'subject_set_namespace'].nil?
      query_params[:'subject_set.object'] = opts[:'subject_set_object'] if !opts[:'subject_set_object'].nil?
      query_params[:'subject_set.relation'] = opts[:'subject_set_relation'] if !opts[:'subject_set_relation'].nil?
      query_params[:'max-depth'] = opts[:'max_depth'] if !opts[:'max_depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CheckPermissionResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"PermissionApi.check_permission_or_error",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionApi#check_permission_or_error\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Expand a Relationship into permissions.
    # Use this endpoint to expand a relationship tuple into permissions.
    # @param namespace [String] Namespace of the Subject Set
    # @param object [String] Object of the Subject Set
    # @param relation [String] Relation of the Subject Set
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_depth 
    # @return [ExpandedPermissionTree]
    def expand_permissions(namespace, object, relation, opts = {})
      data, _status_code, _headers = expand_permissions_with_http_info(namespace, object, relation, opts)
      data
    end

    # Expand a Relationship into permissions.
    # Use this endpoint to expand a relationship tuple into permissions.
    # @param namespace [String] Namespace of the Subject Set
    # @param object [String] Object of the Subject Set
    # @param relation [String] Relation of the Subject Set
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_depth 
    # @return [Array<(ExpandedPermissionTree, Integer, Hash)>] ExpandedPermissionTree data, response status code and response headers
    def expand_permissions_with_http_info(namespace, object, relation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionApi.expand_permissions ...'
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling PermissionApi.expand_permissions"
      end
      # verify the required parameter 'object' is set
      if @api_client.config.client_side_validation && object.nil?
        fail ArgumentError, "Missing the required parameter 'object' when calling PermissionApi.expand_permissions"
      end
      # verify the required parameter 'relation' is set
      if @api_client.config.client_side_validation && relation.nil?
        fail ArgumentError, "Missing the required parameter 'relation' when calling PermissionApi.expand_permissions"
      end
      # resource path
      local_var_path = '/relation-tuples/expand'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'namespace'] = namespace
      query_params[:'object'] = object
      query_params[:'relation'] = relation
      query_params[:'max-depth'] = opts[:'max_depth'] if !opts[:'max_depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ExpandedPermissionTree'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"PermissionApi.expand_permissions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionApi#expand_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check a permission
    # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_depth 
    # @option opts [PostCheckPermissionBody] :post_check_permission_body 
    # @return [CheckPermissionResult]
    def post_check_permission(opts = {})
      data, _status_code, _headers = post_check_permission_with_http_info(opts)
      data
    end

    # Check a permission
    # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_depth 
    # @option opts [PostCheckPermissionBody] :post_check_permission_body 
    # @return [Array<(CheckPermissionResult, Integer, Hash)>] CheckPermissionResult data, response status code and response headers
    def post_check_permission_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionApi.post_check_permission ...'
      end
      # resource path
      local_var_path = '/relation-tuples/check/openapi'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'max-depth'] = opts[:'max_depth'] if !opts[:'max_depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'post_check_permission_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'CheckPermissionResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"PermissionApi.post_check_permission",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionApi#post_check_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check a permission
    # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_depth 
    # @option opts [PostCheckPermissionOrErrorBody] :post_check_permission_or_error_body 
    # @return [CheckPermissionResult]
    def post_check_permission_or_error(opts = {})
      data, _status_code, _headers = post_check_permission_or_error_with_http_info(opts)
      data
    end

    # Check a permission
    # To learn how relationship tuples and the check works, head over to [the documentation](https://www.ory.sh/docs/keto/concepts/api-overview).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_depth 
    # @option opts [PostCheckPermissionOrErrorBody] :post_check_permission_or_error_body 
    # @return [Array<(CheckPermissionResult, Integer, Hash)>] CheckPermissionResult data, response status code and response headers
    def post_check_permission_or_error_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionApi.post_check_permission_or_error ...'
      end
      # resource path
      local_var_path = '/relation-tuples/check'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'max-depth'] = opts[:'max_depth'] if !opts[:'max_depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'post_check_permission_or_error_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'CheckPermissionResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oryAccessToken']

      new_options = opts.merge(
        :operation => :"PermissionApi.post_check_permission_or_error",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionApi#post_check_permission_or_error\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
