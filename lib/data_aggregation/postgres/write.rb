module DataAggregation
  module Postgres
    class Write
      attr_writer :db_connection

      

      def initialize(db_connecton)
        @db_connecton = db_connecton
      end

      def call(name, position, &block) 
        query = db[:consumers].where(catagory_name: name).first 
        current_position = query[:position]

        if position > current_position
          db.transaction do
            block.call
            db[:consumers].where(catagory_name: name).update(position: position)
          end
        end
      end 

      private

      def db
        @db_connecton
      end 

    end
  end
end
