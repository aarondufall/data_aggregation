module DataAggregation
  module Postgres
    class Connect
      attr_reader :name, :config

      def self.configure_connection(receiver, attribute = :db_connection)
        instance = build
        receiver.send :"#{attribute}=", instance.()
      end

      def build
        # Use setting to configure
      end

      def initialize(name, config = {})
        @name = name
        @config = config
      end

      def call
        @connection ||= Sequel.postgres(name, config)
      end
    end
  end
end
