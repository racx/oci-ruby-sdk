# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The properties that define a request to update a node pool.
  class ContainerEngine::Models::UpdateNodePoolDetails
    # The new name for the cluster. Avoid entering confidential information.
    # @return [String]
    attr_accessor :name

    # The version of Kubernetes to which the nodes in the node pool should be upgraded.
    # @return [String]
    attr_accessor :kubernetes_version

    # A list of key/value pairs to add to nodes after they join the Kubernetes cluster.
    # @return [Array<OCI::ContainerEngine::Models::KeyValue>]
    attr_accessor :initial_node_labels

    # The number of nodes to have in each subnet specified in the subnetIds property. This property is deprecated,
    # use nodeConfigDetails instead. If the current value of quantityPerSubnet is greater than 0, you can only
    # use quantityPerSubnet to scale the node pool. If the current value of quantityPerSubnet is equal to 0 and
    # the current value of size in nodeConfigDetails is greater than 0, before you can use quantityPerSubnet,
    # you must first scale the node pool to 0 nodes using nodeConfigDetails.
    #
    # @return [Integer]
    attr_accessor :quantity_per_subnet

    # The OCIDs of the subnets in which to place nodes for this node pool. This property is deprecated,
    # use nodeConfigDetails instead. Only one of the subnetIds or nodeConfigDetails
    # properties can be specified.
    #
    # @return [Array<String>]
    attr_accessor :subnet_ids

    # The configuration of nodes in the node pool. Only one of the subnetIds or nodeConfigDetails
    # properties should be specified. If the current value of quantityPerSubnet is greater than 0, the node
    # pool may still be scaled using quantityPerSubnet. Before you can use nodeConfigDetails,
    # you must first scale the node pool to 0 nodes using quantityPerSubnet.
    #
    # @return [OCI::ContainerEngine::Models::UpdateNodePoolNodeConfigDetails]
    attr_accessor :node_config_details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'name': :'name',
        'kubernetes_version': :'kubernetesVersion',
        'initial_node_labels': :'initialNodeLabels',
        'quantity_per_subnet': :'quantityPerSubnet',
        'subnet_ids': :'subnetIds',
        'node_config_details': :'nodeConfigDetails'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'name': :'String',
        'kubernetes_version': :'String',
        'initial_node_labels': :'Array<OCI::ContainerEngine::Models::KeyValue>',
        'quantity_per_subnet': :'Integer',
        'subnet_ids': :'Array<String>',
        'node_config_details': :'OCI::ContainerEngine::Models::UpdateNodePoolNodeConfigDetails'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :kubernetes_version The value to assign to the {#kubernetes_version} property
    # @option attributes [Array<OCI::ContainerEngine::Models::KeyValue>] :initial_node_labels The value to assign to the {#initial_node_labels} property
    # @option attributes [Integer] :quantity_per_subnet The value to assign to the {#quantity_per_subnet} property
    # @option attributes [Array<String>] :subnet_ids The value to assign to the {#subnet_ids} property
    # @option attributes [OCI::ContainerEngine::Models::UpdateNodePoolNodeConfigDetails] :node_config_details The value to assign to the {#node_config_details} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.name = attributes[:'name'] if attributes[:'name']

      self.kubernetes_version = attributes[:'kubernetesVersion'] if attributes[:'kubernetesVersion']

      raise 'You cannot provide both :kubernetesVersion and :kubernetes_version' if attributes.key?(:'kubernetesVersion') && attributes.key?(:'kubernetes_version')

      self.kubernetes_version = attributes[:'kubernetes_version'] if attributes[:'kubernetes_version']

      self.initial_node_labels = attributes[:'initialNodeLabels'] if attributes[:'initialNodeLabels']

      raise 'You cannot provide both :initialNodeLabels and :initial_node_labels' if attributes.key?(:'initialNodeLabels') && attributes.key?(:'initial_node_labels')

      self.initial_node_labels = attributes[:'initial_node_labels'] if attributes[:'initial_node_labels']

      self.quantity_per_subnet = attributes[:'quantityPerSubnet'] if attributes[:'quantityPerSubnet']

      raise 'You cannot provide both :quantityPerSubnet and :quantity_per_subnet' if attributes.key?(:'quantityPerSubnet') && attributes.key?(:'quantity_per_subnet')

      self.quantity_per_subnet = attributes[:'quantity_per_subnet'] if attributes[:'quantity_per_subnet']

      self.subnet_ids = attributes[:'subnetIds'] if attributes[:'subnetIds']

      raise 'You cannot provide both :subnetIds and :subnet_ids' if attributes.key?(:'subnetIds') && attributes.key?(:'subnet_ids')

      self.subnet_ids = attributes[:'subnet_ids'] if attributes[:'subnet_ids']

      self.node_config_details = attributes[:'nodeConfigDetails'] if attributes[:'nodeConfigDetails']

      raise 'You cannot provide both :nodeConfigDetails and :node_config_details' if attributes.key?(:'nodeConfigDetails') && attributes.key?(:'node_config_details')

      self.node_config_details = attributes[:'node_config_details'] if attributes[:'node_config_details']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        name == other.name &&
        kubernetes_version == other.kubernetes_version &&
        initial_node_labels == other.initial_node_labels &&
        quantity_per_subnet == other.quantity_per_subnet &&
        subnet_ids == other.subnet_ids &&
        node_config_details == other.node_config_details
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
      [name, kubernetes_version, initial_node_labels, quantity_per_subnet, subnet_ids, node_config_details].hash
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
