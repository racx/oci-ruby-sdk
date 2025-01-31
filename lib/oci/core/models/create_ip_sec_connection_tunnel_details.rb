# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # CreateIPSecConnectionTunnelDetails model.
  class Core::Models::CreateIPSecConnectionTunnelDetails
    ROUTING_ENUM = [
      ROUTING_BGP = 'BGP'.freeze,
      ROUTING_STATIC = 'STATIC'.freeze
    ].freeze

    IKE_VERSION_ENUM = [
      IKE_VERSION_V1 = 'V1'.freeze,
      IKE_VERSION_V2 = 'V2'.freeze
    ].freeze

    # A user-friendly name. Does not have to be unique, and it's changeable. Avoid
    # entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # The type of routing to use for this tunnel (either BGP dynamic routing or static routing).
    #
    # @return [String]
    attr_reader :routing

    # Internet Key Exchange protocol version.
    #
    # @return [String]
    attr_reader :ike_version

    # The shared secret (pre-shared key) to use for the IPSec tunnel. Only numbers, letters, and
    # spaces are allowed. If you don't provide a value,
    # Oracle generates a value for you. You can specify your own shared secret later if
    # you like with {#update_ip_sec_connection_tunnel_shared_secret update_ip_sec_connection_tunnel_shared_secret}.
    #
    # Example: `EXAMPLEToUis6j1cp8GdVQxcmdfMO0yXMLilZTbYCMDGu4V8o`
    #
    # @return [String]
    attr_accessor :shared_secret

    # Information for establishing a BGP session for the IPSec tunnel. Required if the tunnel uses
    # BGP dynamic routing.
    #
    # If the tunnel instead uses static routing, you may optionally provide
    # this object and set an IP address for one or both ends of the IPSec tunnel for the purposes
    # of troubleshooting or monitoring the tunnel.
    #
    # @return [OCI::Core::Models::CreateIPSecTunnelBgpSessionDetails]
    attr_accessor :bgp_session_config

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'routing': :'routing',
        'ike_version': :'ikeVersion',
        'shared_secret': :'sharedSecret',
        'bgp_session_config': :'bgpSessionConfig'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'routing': :'String',
        'ike_version': :'String',
        'shared_secret': :'String',
        'bgp_session_config': :'OCI::Core::Models::CreateIPSecTunnelBgpSessionDetails'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :routing The value to assign to the {#routing} property
    # @option attributes [String] :ike_version The value to assign to the {#ike_version} property
    # @option attributes [String] :shared_secret The value to assign to the {#shared_secret} property
    # @option attributes [OCI::Core::Models::CreateIPSecTunnelBgpSessionDetails] :bgp_session_config The value to assign to the {#bgp_session_config} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.routing = attributes[:'routing'] if attributes[:'routing']

      self.ike_version = attributes[:'ikeVersion'] if attributes[:'ikeVersion']

      raise 'You cannot provide both :ikeVersion and :ike_version' if attributes.key?(:'ikeVersion') && attributes.key?(:'ike_version')

      self.ike_version = attributes[:'ike_version'] if attributes[:'ike_version']

      self.shared_secret = attributes[:'sharedSecret'] if attributes[:'sharedSecret']

      raise 'You cannot provide both :sharedSecret and :shared_secret' if attributes.key?(:'sharedSecret') && attributes.key?(:'shared_secret')

      self.shared_secret = attributes[:'shared_secret'] if attributes[:'shared_secret']

      self.bgp_session_config = attributes[:'bgpSessionConfig'] if attributes[:'bgpSessionConfig']

      raise 'You cannot provide both :bgpSessionConfig and :bgp_session_config' if attributes.key?(:'bgpSessionConfig') && attributes.key?(:'bgp_session_config')

      self.bgp_session_config = attributes[:'bgp_session_config'] if attributes[:'bgp_session_config']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing Object to be assigned
    def routing=(routing)
      raise "Invalid value for 'routing': this must be one of the values in ROUTING_ENUM." if routing && !ROUTING_ENUM.include?(routing)

      @routing = routing
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ike_version Object to be assigned
    def ike_version=(ike_version)
      raise "Invalid value for 'ike_version': this must be one of the values in IKE_VERSION_ENUM." if ike_version && !IKE_VERSION_ENUM.include?(ike_version)

      @ike_version = ike_version
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        routing == other.routing &&
        ike_version == other.ike_version &&
        shared_secret == other.shared_secret &&
        bgp_session_config == other.bgp_session_config
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [display_name, routing, ike_version, shared_secret, bgp_session_config].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

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
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
