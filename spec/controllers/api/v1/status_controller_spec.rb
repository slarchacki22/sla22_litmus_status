require 'rails_helper'


RSpec.describe Api::V1::StatusController, :type => :controller do
  describe "GET index" do
    it "returns a successful 200 response" do
      get :index, format: :json
      expect(response).to be_success
    end

    it "returns all the statuses" do
      count = Status.all.count
      get :index, format: :json
      parsed_response = JSON.parse(response.body)
      expect(parsed_response.length).to eq(count)
    end
  end
end
