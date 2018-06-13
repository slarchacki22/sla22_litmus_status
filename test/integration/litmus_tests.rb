
require './test/test_helper'
class LitmusTests < ActionDispatch::IntegrationTest

  describe "Litmus Status App" do

    setup do
      #Status.destroy_all
      @status = Status.new current_status: true, status_message: "Up and running"
      @status.save
    end

    it "should have a main page" do
      get status_path
      assert_response 200
    end

    describe "should have a single page showing the current status" do
      setup do
        get status_path
      end

      it "should show the status message" do
        assert_match @status.status_message, response.body
      end

    it "should show the history of the last 10 current_status, status_message, and timestamp" do
      10.times { Status.new(current_status: true, status_message: "Up and Up").save }
      get status_path
      assert_select ".status_row" do |sel|
        assert_equal 10, sel.count
      end
    end

    end

  end

end
