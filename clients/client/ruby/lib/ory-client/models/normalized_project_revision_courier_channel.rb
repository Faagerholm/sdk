=begin
#Ory APIs

#Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 

The version of the OpenAPI document: v1.14.4
Contact: support@ory.sh
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module OryClient
  class NormalizedProjectRevisionCourierChannel
    # The Channel's public ID
    attr_accessor :channel_id

    # The creation date
    attr_accessor :created_at

    # API key location  Can either be \"header\" or \"query\"
    attr_accessor :request_config_auth_config_api_key_in

    # API key name  Only used if the auth type is api_key
    attr_accessor :request_config_auth_config_api_key_name

    # API key value  Only used if the auth type is api_key
    attr_accessor :request_config_auth_config_api_key_value

    # Basic Auth Password  Only used if the auth type is basic_auth
    attr_accessor :request_config_auth_config_basic_auth_password

    # Basic Auth Username  Only used if the auth type is basic_auth
    attr_accessor :request_config_auth_config_basic_auth_user

    # HTTP Auth Method to use for the HTTP call  Can either be basic_auth or api_key basic_auth CourierChannelAuthTypeBasicAuth api_key CourierChannelAuthTypeApiKey
    attr_accessor :request_config_auth_type

    # URI pointing to the JsonNet template used for HTTP body payload generation.
    attr_accessor :request_config_body

    # NullJSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger and is NULLable-
    attr_accessor :request_config_headers

    # The HTTP method to use (GET, POST, etc) for the HTTP call
    attr_accessor :request_config_method

    attr_accessor :request_config_url

    # Last upate time
    attr_accessor :updated_at

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'channel_id' => :'channel_id',
        :'created_at' => :'created_at',
        :'request_config_auth_config_api_key_in' => :'request_config_auth_config_api_key_in',
        :'request_config_auth_config_api_key_name' => :'request_config_auth_config_api_key_name',
        :'request_config_auth_config_api_key_value' => :'request_config_auth_config_api_key_value',
        :'request_config_auth_config_basic_auth_password' => :'request_config_auth_config_basic_auth_password',
        :'request_config_auth_config_basic_auth_user' => :'request_config_auth_config_basic_auth_user',
        :'request_config_auth_type' => :'request_config_auth_type',
        :'request_config_body' => :'request_config_body',
        :'request_config_headers' => :'request_config_headers',
        :'request_config_method' => :'request_config_method',
        :'request_config_url' => :'request_config_url',
        :'updated_at' => :'updated_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'channel_id' => :'String',
        :'created_at' => :'Time',
        :'request_config_auth_config_api_key_in' => :'String',
        :'request_config_auth_config_api_key_name' => :'String',
        :'request_config_auth_config_api_key_value' => :'String',
        :'request_config_auth_config_basic_auth_password' => :'String',
        :'request_config_auth_config_basic_auth_user' => :'String',
        :'request_config_auth_type' => :'String',
        :'request_config_body' => :'String',
        :'request_config_headers' => :'Object',
        :'request_config_method' => :'String',
        :'request_config_url' => :'String',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'request_config_headers',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::NormalizedProjectRevisionCourierChannel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::NormalizedProjectRevisionCourierChannel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'channel_id')
        self.channel_id = attributes[:'channel_id']
      else
        self.channel_id = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'request_config_auth_config_api_key_in')
        self.request_config_auth_config_api_key_in = attributes[:'request_config_auth_config_api_key_in']
      end

      if attributes.key?(:'request_config_auth_config_api_key_name')
        self.request_config_auth_config_api_key_name = attributes[:'request_config_auth_config_api_key_name']
      end

      if attributes.key?(:'request_config_auth_config_api_key_value')
        self.request_config_auth_config_api_key_value = attributes[:'request_config_auth_config_api_key_value']
      end

      if attributes.key?(:'request_config_auth_config_basic_auth_password')
        self.request_config_auth_config_basic_auth_password = attributes[:'request_config_auth_config_basic_auth_password']
      end

      if attributes.key?(:'request_config_auth_config_basic_auth_user')
        self.request_config_auth_config_basic_auth_user = attributes[:'request_config_auth_config_basic_auth_user']
      end

      if attributes.key?(:'request_config_auth_type')
        self.request_config_auth_type = attributes[:'request_config_auth_type']
      end

      if attributes.key?(:'request_config_body')
        self.request_config_body = attributes[:'request_config_body']
      else
        self.request_config_body = nil
      end

      if attributes.key?(:'request_config_headers')
        self.request_config_headers = attributes[:'request_config_headers']
      end

      if attributes.key?(:'request_config_method')
        self.request_config_method = attributes[:'request_config_method']
      else
        self.request_config_method = nil
      end

      if attributes.key?(:'request_config_url')
        self.request_config_url = attributes[:'request_config_url']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @channel_id.nil?
        invalid_properties.push('invalid value for "channel_id", channel_id cannot be nil.')
      end

      if @request_config_body.nil?
        invalid_properties.push('invalid value for "request_config_body", request_config_body cannot be nil.')
      end

      if @request_config_method.nil?
        invalid_properties.push('invalid value for "request_config_method", request_config_method cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @channel_id.nil?
      request_config_auth_type_validator = EnumAttributeValidator.new('String', ["basic_auth", "api_key"])
      return false unless request_config_auth_type_validator.valid?(@request_config_auth_type)
      return false if @request_config_body.nil?
      return false if @request_config_method.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_config_auth_type Object to be assigned
    def request_config_auth_type=(request_config_auth_type)
      validator = EnumAttributeValidator.new('String', ["basic_auth", "api_key"])
      unless validator.valid?(request_config_auth_type)
        fail ArgumentError, "invalid value for \"request_config_auth_type\", must be one of #{validator.allowable_values}."
      end
      @request_config_auth_type = request_config_auth_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          channel_id == o.channel_id &&
          created_at == o.created_at &&
          request_config_auth_config_api_key_in == o.request_config_auth_config_api_key_in &&
          request_config_auth_config_api_key_name == o.request_config_auth_config_api_key_name &&
          request_config_auth_config_api_key_value == o.request_config_auth_config_api_key_value &&
          request_config_auth_config_basic_auth_password == o.request_config_auth_config_basic_auth_password &&
          request_config_auth_config_basic_auth_user == o.request_config_auth_config_basic_auth_user &&
          request_config_auth_type == o.request_config_auth_type &&
          request_config_body == o.request_config_body &&
          request_config_headers == o.request_config_headers &&
          request_config_method == o.request_config_method &&
          request_config_url == o.request_config_url &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [channel_id, created_at, request_config_auth_config_api_key_in, request_config_auth_config_api_key_name, request_config_auth_config_api_key_value, request_config_auth_config_basic_auth_password, request_config_auth_config_basic_auth_user, request_config_auth_type, request_config_body, request_config_headers, request_config_method, request_config_url, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OryClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
