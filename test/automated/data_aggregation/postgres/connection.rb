require_relative '../../automated_init'

context "DataAggregation::Postgres::Connect" do
  context ".configure_connection()" do
    class ReceiverDouble
      attr_accessor :did_receive_some_message,
                    :did_receive_db_connection

      def initialize
        @did_receive_some_message = false
        @did_receive_db_connection = false
      end

      def some_message
        @did_receive_some_message = true
      end

      def db_connection
        @did_receive_db_connection = true
      end
    end

    test "calls second param on first param" do
      rec = ReceiverDouble.new

      refute rec.did_receive_some_message
      DataAggregation::Postgres::Connect.configure_connection(rec, :some_message)
      assert rec.did_receive_some_message
    end

    test "calls :db_connection on first param if no second param provided" do
      rec = ReceiverDouble.new

      refute rec.did_receive_db_connection
      DataAggregation::Postgres::Connect.configure_connection(rec)
      assert rec.did_receive_db_connection
    end

    test "sends a built instance of the class to the first param"
  end
end
