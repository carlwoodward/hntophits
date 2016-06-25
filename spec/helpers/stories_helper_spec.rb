require 'rails_helper'

RSpec.describe StoriesHelper, type: :helper do
  it "given 0 as an arg, it will return 1 min" do 
    expect(helper.minutes_to_words(0)).to eq '1 min'
  end
  it "will return 1 min" do 
    expect(helper.minutes_to_words(1)).to eq '1 min'
  end
  it "will return 10 m" do
    expect(helper.minutes_to_words(10)).to eq '10 mins'
  end
  it "will return 1 h" do
    expect(helper.minutes_to_words(60)).to eq '1 hour'
  end
  it "will return 1 h" do
    expect(helper.minutes_to_words(70)).to eq '1 hour'
  end
  it "will return 2 h" do
    expect(helper.minutes_to_words(130)).to eq '2 hours'
  end
  it "will return 1 d" do
    expect(helper.minutes_to_words(1440)).to eq '1 day'
  end
  it "will return 2 d" do
    expect(helper.minutes_to_words(1440*2)).to eq '2 days'
  end
  it "will return 2 d" do
    expect(helper.minutes_to_words(1440*2+1)).to eq '2 days'
  end
  it "will return 1 month" do
    expect(helper.minutes_to_words(1440*30.5+1)).to eq '1 month'
  end
  it "will return 2 months" do
    expect(helper.minutes_to_words(1440*30.5*2+2)).to eq '2 months'
  end
  it "will return 1 year" do
    expect(helper.minutes_to_words(1440*30.5*12+2)).to eq '1 year'
  end
  it "will return 2 years" do
    expect(helper.minutes_to_words(1440*30.5*12*2+2)).to eq '2 years'
  end
end
