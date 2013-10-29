module Checkpoint
  class Strategy
    class Provider
      attr_reader :name, :mode

      def initialize(opts={})
        @name = opts[:name]
        @mode = opts[:mode]

        unless @name && @mode
          raise ArgumentError, 'Both name and mode must be specified for provider'
        end
      end

      def authenticate(*args)
        raise NotImplementedError, 'Subclasses must implement the authenticate method'
      end
    end
  end
end