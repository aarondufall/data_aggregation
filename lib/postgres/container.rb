module DataAggregation
  module Postgres
    class Container
      attr_reader :name, :config

      def initialize(name, config = {})
        @name = name
        @config = config
      end

      def connection
        @connection ||= Sequel.postgres(name, config)
      end
    end
  end
end
