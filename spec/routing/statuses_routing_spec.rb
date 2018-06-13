require "rails_helper"

RSpec.describe "routes to the statuses controller", :type => :routing do
  it "routes a named route" do
    expect(:get => status_path).
      to route_to(:controller => "statuses", :action => "status")
  end
end