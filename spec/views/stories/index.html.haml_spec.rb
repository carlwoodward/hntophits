require 'rails_helper'

RSpec.describe "stories/index.html.haml", type: :view do
  it "shows the stories in order" do
    stories = 0.upto(2).map do |i|
      story = create(:story)
      story.time_at_num_one = 2 - i
      story.save
      story
    end
    assign(:stories, Story.by_most_time.page(params[:page]))

    render

    stories = assert_select(".stories p .story-duration") 
    expect(stories.length).to be 3
    expect(stories[0].children[1].to_s).to match(/2 mins/)
    expect(stories[1].children[1].to_s).to match(/1 min/)
    expect(stories[2].children[1].to_s).to match(/1 min/)
  end
end
