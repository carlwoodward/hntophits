require "rails_helper"

RSpec.describe StoriesController, type: :routing do
  it "will route to #index" do
    expect(get: "/stories").to route_to(controller: "stories", action: "index")
  end
  it "will route to #show" do
    expect(get: "/stories/1").to route_to(controller: "stories", action: "show", id: "1")
  end
end

