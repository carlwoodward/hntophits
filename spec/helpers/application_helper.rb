require "rails_helper"

RSpec.describe ApplicationHelper do
  context "exercise build_hacker_news_href" do
    it "append the argument to the hacker new url" do
      expect(HackerNews.build_hacker_news_href("foo")).to match(/https:.+ycombinator.+item\?id=foo/)
    end
  end

  context "exercise time_difference_between_now_and_date_last_num_one_in_minutes" do
    it "will find about a minute difference" do
      diff = HackerNews.time_difference_between_now_and_date_last_num_one_in_minutes(Time.now - 60)
      expect(diff).to be > 1.0
    end
  end
end
