# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

module OCI
  module Analytics
    # Module containing models for requests made to, and responses received from,
    # OCI Analytics services
    module Models
    end
  end
end

# Require models
require 'oci/analytics/models/analytics_instance'
require 'oci/analytics/models/analytics_instance_lifecycle_state'
require 'oci/analytics/models/analytics_instance_summary'
require 'oci/analytics/models/capacity'
require 'oci/analytics/models/capacity_type'
require 'oci/analytics/models/change_compartment_details'
require 'oci/analytics/models/create_analytics_instance_details'
require 'oci/analytics/models/feature_set'
require 'oci/analytics/models/license_type'
require 'oci/analytics/models/scale_analytics_instance_details'
require 'oci/analytics/models/sort_by'
require 'oci/analytics/models/sort_order'
require 'oci/analytics/models/update_analytics_instance_details'
require 'oci/analytics/models/work_request'
require 'oci/analytics/models/work_request_action_result'
require 'oci/analytics/models/work_request_error'
require 'oci/analytics/models/work_request_log'
require 'oci/analytics/models/work_request_operation_type'
require 'oci/analytics/models/work_request_resource'
require 'oci/analytics/models/work_request_resource_type'
require 'oci/analytics/models/work_request_sort_by'
require 'oci/analytics/models/work_request_status'
require 'oci/analytics/models/work_request_summary'

# Require generated clients
require 'oci/analytics/analytics_client'
require 'oci/analytics/analytics_client_composite_operations'

# Require service utilities
require 'oci/analytics/util'
