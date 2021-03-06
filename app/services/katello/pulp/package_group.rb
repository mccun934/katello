module Katello
  module Pulp
    class PackageGroup < PulpContentUnit
      include LazyAccessor

      CONTENT_TYPE = 'package_group'.freeze

      lazy_accessor :pulp_facts, :initializer => :backend_data

      lazy_accessor :optional_package_names, :mandatory_package_names,
                    :conditional_package_names, :default_package_names, :_id,
                    :repository_memberships,
                    :initializer => :pulp_facts

      def update_model(model)
        model.update_attributes!(backend_data.slice('name', 'description'))
      end
    end
  end
end
