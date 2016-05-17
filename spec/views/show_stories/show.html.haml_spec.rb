require 'rails_helper'

RSpec.describe "show_stories/show.html.haml", type: :view do
  it "shows the stories in order" do
    stories = 0.upto(2).map do |i|
      story = create(:story)
      story.time_at_num_one = 2 - i
      story.save
      story
    end
    assign(:stories, Story.by_most_time.page(params[:page]))

    render

    stories = assert_select(".table tr td") 
    expect(stories.length).to be 6
    expect(stories[0].children[1].to_s).to match(/^2 mins$/)
    expect(stories[2].children[1].to_s).to match(/^1 min$/)
    expect(stories[4].children[1].to_s).to match(/^1 min$/)
  end
end
