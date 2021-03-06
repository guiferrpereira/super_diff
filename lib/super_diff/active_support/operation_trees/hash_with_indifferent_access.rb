module SuperDiff
  module ActiveSupport
    module OperationTrees
      class HashWithIndifferentAccess < SuperDiff::OperationTrees::Base
        def to_diff(indent_level:, collection_prefix:, add_comma:)
          DiffFormatters::HashWithIndifferentAccess.call(
            self,
            indent_level: indent_level,
            collection_prefix: collection_prefix,
            add_comma: add_comma,
          )
        end
      end
    end
  end
end
