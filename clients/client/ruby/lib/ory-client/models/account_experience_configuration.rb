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
  class AccountExperienceConfiguration
    attr_accessor :account_experience_theme_stylesheet

    attr_accessor :favicon_type

    attr_accessor :favicon_url

    attr_accessor :kratos_selfservice_flows_recovery_enabled

    attr_accessor :kratos_selfservice_flows_registration_enabled

    attr_accessor :kratos_selfservice_flows_verification_enabled

    attr_accessor :logo_url

    attr_accessor :name

    attr_accessor :organization_map

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_experience_theme_stylesheet' => :'account_experience_theme_stylesheet',
        :'favicon_type' => :'favicon_type',
        :'favicon_url' => :'favicon_url',
        :'kratos_selfservice_flows_recovery_enabled' => :'kratos_selfservice_flows_recovery_enabled',
        :'kratos_selfservice_flows_registration_enabled' => :'kratos_selfservice_flows_registration_enabled',
        :'kratos_selfservice_flows_verification_enabled' => :'kratos_selfservice_flows_verification_enabled',
        :'logo_url' => :'logo_url',
        :'name' => :'name',
        :'organization_map' => :'organization_map'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_experience_theme_stylesheet' => :'String',
        :'favicon_type' => :'String',
        :'favicon_url' => :'String',
        :'kratos_selfservice_flows_recovery_enabled' => :'Boolean',
        :'kratos_selfservice_flows_registration_enabled' => :'Boolean',
        :'kratos_selfservice_flows_verification_enabled' => :'Boolean',
        :'logo_url' => :'String',
        :'name' => :'String',
        :'organization_map' => :'Hash<String, String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OryClient::AccountExperienceConfiguration` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OryClient::AccountExperienceConfiguration`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_experience_theme_stylesheet')
        self.account_experience_theme_stylesheet = attributes[:'account_experience_theme_stylesheet']
      end

      if attributes.key?(:'favicon_type')
        self.favicon_type = attributes[:'favicon_type']
      end

      if attributes.key?(:'favicon_url')
        self.favicon_url = attributes[:'favicon_url']
      end

      if attributes.key?(:'kratos_selfservice_flows_recovery_enabled')
        self.kratos_selfservice_flows_recovery_enabled = attributes[:'kratos_selfservice_flows_recovery_enabled']
      end

      if attributes.key?(:'kratos_selfservice_flows_registration_enabled')
        self.kratos_selfservice_flows_registration_enabled = attributes[:'kratos_selfservice_flows_registration_enabled']
      end

      if attributes.key?(:'kratos_selfservice_flows_verification_enabled')
        self.kratos_selfservice_flows_verification_enabled = attributes[:'kratos_selfservice_flows_verification_enabled']
      end

      if attributes.key?(:'logo_url')
        self.logo_url = attributes[:'logo_url']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'organization_map')
        if (value = attributes[:'organization_map']).is_a?(Hash)
          self.organization_map = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_experience_theme_stylesheet == o.account_experience_theme_stylesheet &&
          favicon_type == o.favicon_type &&
          favicon_url == o.favicon_url &&
          kratos_selfservice_flows_recovery_enabled == o.kratos_selfservice_flows_recovery_enabled &&
          kratos_selfservice_flows_registration_enabled == o.kratos_selfservice_flows_registration_enabled &&
          kratos_selfservice_flows_verification_enabled == o.kratos_selfservice_flows_verification_enabled &&
          logo_url == o.logo_url &&
          name == o.name &&
          organization_map == o.organization_map
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_experience_theme_stylesheet, favicon_type, favicon_url, kratos_selfservice_flows_recovery_enabled, kratos_selfservice_flows_registration_enabled, kratos_selfservice_flows_verification_enabled, logo_url, name, organization_map].hash
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
