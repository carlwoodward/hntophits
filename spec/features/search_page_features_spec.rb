require 'rails_helper'

RSpec.feature "SearchPageFeatures", type: :feature do

  it "test for 'Nothing Found' response from a search" do
    visit("/")
    fill_in('search_string', with: 'ruby')
    click_button('Search')
    expect(page.has_content?("Nothing found.")).to be true 
  end

  context "found some search results" do
    before(:each) do
      @descriptions = [ 'dummy description', 'find this one - ruby', 'ignore this one' ]
      @stories = 3.times.map  { |i| create(:story, description: @descriptions[i], time_at_num_one: i*2, href: "stories href #{i}") }
      @top_hits = []
      @top_hits << create(:top_hit, story_id: @stories[0].id, date_seen: Time.now - 5.minutes)
      @top_hits << create(:top_hit, story_id: @stories[1].id, date_seen: Time.now - 2.minutes)
      @top_hits << create(:top_hit, story_id: @stories[2].id, date_seen: Time.now - 3.minutes)
    end

    it "will found the one story about ruby" do
      visit("/")
      fill_in('search_string', with: 'ruby')
      click_button('Search')
      expect(page.has_css?('.stories p', count: 1)).to be true # the heading and one match.
      expect(all('.stories p .story-link', text: 'find this one - ruby').count).to eq 1
    end

    it "will exercise the clicking of the 'Last Seen' link" do
      visit("/")
      fill_in('search_string', with: 'one')
      click_button('Search')
      # The first time the order is descending on time_at_num_one
      expect(page.has_css?('.stories p', count: 2)).to be true # the heading and one match.
      expect(page.all('.stories p .story-link', text: /one/).count).to eq 2
      # The first click on the "Last Seen" button lists the stories in descending order on 'last seen' field
      click_link('Last Seen')
      elements = page.all('.stories p .story-link', text: /one/)
      expect(elements[0].text).to match(/ignore this one/)
      expect(elements[1].text).to match(/find this one/)
      # The second click on the "Last Seen" button lists the stories in ascending order on 'last seen' field
      click_link('Last Seen')
      elements = page.all('.stories p .story-link', text: /one/)
      expect(elements[0].text).to match(/find this one/)
      expect(elements[1].text).to match(/ignore this one/)
      #expect(find_link('
      expect(page).to have_link('find this one - ruby', href: 'stories href 1')
      expect(page).to have_link('ignore this one', href: 'stories href 2')
    end

    it "will exercise the clicking of the 'Time at #1' link" do
      visit("/")
      fill_in('search_string', with: 'one')
      click_button('Search')
      # The first time the order is descending on time_at_num_one
      expect(page.has_css?('.stories p', count: 2)).to be true # the heading and one match.
      expect(page.all('.stories p .story-link', text: /one/).count).to eq 2
      # The first click on the "Last Seen" button lists the stories in descending order on 'last seen' field
      click_link('Time at #1')
      elements = page.all('.stories p .story-link', text: /one/)
      expect(elements[0].text).to match(/find this one/)
      expect(elements[1].text).to match(/ignore this one/)
      # The second click on the "Last Seen" button lists the stories in ascending order on 'last seen' field
      click_link('Time at #1')
      elements = page.all('.stories p .story-link', text: /one/)
      expect(elements[0].text).to match(/ignore this one/)
      expect(elements[1].text).to match(/find this one/)
      expect(page).to have_link('find this one - ruby', href: 'stories href 1')
      expect(page).to have_link('ignore this one', href: 'stories href 2')
    end

  end

end
