module SuperDiff
  module Rails
    module ObjectInspection
      module MapExtension
        def call(object)
          if object.is_a?(::HashWithIndifferentAccess)
            Inspectors::HashWithIndifferentAccess
          else
            super
          end
        end
      end
    end
  end
end
