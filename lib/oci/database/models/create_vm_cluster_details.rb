# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details for the create VM cluster operation.
  #
  class Database::Models::CreateVmClusterDetails
    LICENSE_MODEL_ENUM = [
      LICENSE_MODEL_LICENSE_INCLUDED = 'LICENSE_INCLUDED'.freeze,
      LICENSE_MODEL_BRING_YOUR_OWN_LICENSE = 'BRING_YOUR_OWN_LICENSE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The user-friendly name for the VM cluster. The name does not need to be unique.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the Exadata infrastructure.
    # @return [String]
    attr_accessor :exadata_infrastructure_id

    # **[Required]** The number of CPU cores to enable for the VM cluster.
    # @return [Integer]
    attr_accessor :cpu_core_count

    # **[Required]** The public key portion of one or more key pairs used for SSH access to the VM cluster.
    # @return [Array<String>]
    attr_accessor :ssh_public_keys

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the VM cluster network.
    # @return [String]
    attr_accessor :vm_cluster_network_id

    # The Oracle license model that applies to the VM cluster. The default is BRING_YOUR_OWN_LICENSE.
    #
    # @return [String]
    attr_reader :license_model

    # If true, the sparse disk group is configured for the VM cluster. If false, the sparse disk group is not created.
    #
    # @return [BOOLEAN]
    attr_accessor :is_sparse_diskgroup_enabled

    # If true, database backup on local Exadata storage is configured for the VM cluster. If false, database backup on local Exadata storage is not available in the VM cluster.
    #
    # @return [BOOLEAN]
    attr_accessor :is_local_backup_enabled

    # The time zone to use for the VM cluster. For details, see [DB System Time Zones](https://docs.cloud.oracle.com/Content/Database/References/timezones.htm).
    # @return [String]
    attr_accessor :time_zone

    # **[Required]** The Oracle Grid Infrastructure software version for the VM cluster.
    # @return [String]
    attr_accessor :gi_version

    # Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'display_name': :'displayName',
        'exadata_infrastructure_id': :'exadataInfrastructureId',
        'cpu_core_count': :'cpuCoreCount',
        'ssh_public_keys': :'sshPublicKeys',
        'vm_cluster_network_id': :'vmClusterNetworkId',
        'license_model': :'licenseModel',
        'is_sparse_diskgroup_enabled': :'isSparseDiskgroupEnabled',
        'is_local_backup_enabled': :'isLocalBackupEnabled',
        'time_zone': :'timeZone',
        'gi_version': :'giVersion',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'display_name': :'String',
        'exadata_infrastructure_id': :'String',
        'cpu_core_count': :'Integer',
        'ssh_public_keys': :'Array<String>',
        'vm_cluster_network_id': :'String',
        'license_model': :'String',
        'is_sparse_diskgroup_enabled': :'BOOLEAN',
        'is_local_backup_enabled': :'BOOLEAN',
        'time_zone': :'String',
        'gi_version': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :exadata_infrastructure_id The value to assign to the {#exadata_infrastructure_id} property
    # @option attributes [Integer] :cpu_core_count The value to assign to the {#cpu_core_count} property
    # @option attributes [Array<String>] :ssh_public_keys The value to assign to the {#ssh_public_keys} property
    # @option attributes [String] :vm_cluster_network_id The value to assign to the {#vm_cluster_network_id} property
    # @option attributes [String] :license_model The value to assign to the {#license_model} property
    # @option attributes [BOOLEAN] :is_sparse_diskgroup_enabled The value to assign to the {#is_sparse_diskgroup_enabled} property
    # @option attributes [BOOLEAN] :is_local_backup_enabled The value to assign to the {#is_local_backup_enabled} property
    # @option attributes [String] :time_zone The value to assign to the {#time_zone} property
    # @option attributes [String] :gi_version The value to assign to the {#gi_version} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.exadata_infrastructure_id = attributes[:'exadataInfrastructureId'] if attributes[:'exadataInfrastructureId']

      raise 'You cannot provide both :exadataInfrastructureId and :exadata_infrastructure_id' if attributes.key?(:'exadataInfrastructureId') && attributes.key?(:'exadata_infrastructure_id')

      self.exadata_infrastructure_id = attributes[:'exadata_infrastructure_id'] if attributes[:'exadata_infrastructure_id']

      self.cpu_core_count = attributes[:'cpuCoreCount'] if attributes[:'cpuCoreCount']

      raise 'You cannot provide both :cpuCoreCount and :cpu_core_count' if attributes.key?(:'cpuCoreCount') && attributes.key?(:'cpu_core_count')

      self.cpu_core_count = attributes[:'cpu_core_count'] if attributes[:'cpu_core_count']

      self.ssh_public_keys = attributes[:'sshPublicKeys'] if attributes[:'sshPublicKeys']

      raise 'You cannot provide both :sshPublicKeys and :ssh_public_keys' if attributes.key?(:'sshPublicKeys') && attributes.key?(:'ssh_public_keys')

      self.ssh_public_keys = attributes[:'ssh_public_keys'] if attributes[:'ssh_public_keys']

      self.vm_cluster_network_id = attributes[:'vmClusterNetworkId'] if attributes[:'vmClusterNetworkId']

      raise 'You cannot provide both :vmClusterNetworkId and :vm_cluster_network_id' if attributes.key?(:'vmClusterNetworkId') && attributes.key?(:'vm_cluster_network_id')

      self.vm_cluster_network_id = attributes[:'vm_cluster_network_id'] if attributes[:'vm_cluster_network_id']

      self.license_model = attributes[:'licenseModel'] if attributes[:'licenseModel']

      raise 'You cannot provide both :licenseModel and :license_model' if attributes.key?(:'licenseModel') && attributes.key?(:'license_model')

      self.license_model = attributes[:'license_model'] if attributes[:'license_model']

      self.is_sparse_diskgroup_enabled = attributes[:'isSparseDiskgroupEnabled'] unless attributes[:'isSparseDiskgroupEnabled'].nil?

      raise 'You cannot provide both :isSparseDiskgroupEnabled and :is_sparse_diskgroup_enabled' if attributes.key?(:'isSparseDiskgroupEnabled') && attributes.key?(:'is_sparse_diskgroup_enabled')

      self.is_sparse_diskgroup_enabled = attributes[:'is_sparse_diskgroup_enabled'] unless attributes[:'is_sparse_diskgroup_enabled'].nil?

      self.is_local_backup_enabled = attributes[:'isLocalBackupEnabled'] unless attributes[:'isLocalBackupEnabled'].nil?

      raise 'You cannot provide both :isLocalBackupEnabled and :is_local_backup_enabled' if attributes.key?(:'isLocalBackupEnabled') && attributes.key?(:'is_local_backup_enabled')

      self.is_local_backup_enabled = attributes[:'is_local_backup_enabled'] unless attributes[:'is_local_backup_enabled'].nil?

      self.time_zone = attributes[:'timeZone'] if attributes[:'timeZone']

      raise 'You cannot provide both :timeZone and :time_zone' if attributes.key?(:'timeZone') && attributes.key?(:'time_zone')

      self.time_zone = attributes[:'time_zone'] if attributes[:'time_zone']

      self.gi_version = attributes[:'giVersion'] if attributes[:'giVersion']

      raise 'You cannot provide both :giVersion and :gi_version' if attributes.key?(:'giVersion') && attributes.key?(:'gi_version')

      self.gi_version = attributes[:'gi_version'] if attributes[:'gi_version']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] license_model Object to be assigned
    def license_model=(license_model)
      raise "Invalid value for 'license_model': this must be one of the values in LICENSE_MODEL_ENUM." if license_model && !LICENSE_MODEL_ENUM.include?(license_model)

      @license_model = license_model
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        compartment_id == other.compartment_id &&
        display_name == other.display_name &&
        exadata_infrastructure_id == other.exadata_infrastructure_id &&
        cpu_core_count == other.cpu_core_count &&
        ssh_public_keys == other.ssh_public_keys &&
        vm_cluster_network_id == other.vm_cluster_network_id &&
        license_model == other.license_model &&
        is_sparse_diskgroup_enabled == other.is_sparse_diskgroup_enabled &&
        is_local_backup_enabled == other.is_local_backup_enabled &&
        time_zone == other.time_zone &&
        gi_version == other.gi_version &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags
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
      [compartment_id, display_name, exadata_infrastructure_id, cpu_core_count, ssh_public_keys, vm_cluster_network_id, license_model, is_sparse_diskgroup_enabled, is_local_backup_enabled, time_zone, gi_version, freeform_tags, defined_tags].hash
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
