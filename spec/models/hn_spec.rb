
require 'rails_helper'

RSpec.describe HN, type: :model do
  describe 'HN.valid_hn_id' do
    it 'should be valid' do
      expect(HN.valid_hn_id(1)).to be true
      expect(HN.valid_hn_id(2)).to be true
      expect(HN.valid_hn_id(30)).to be true
      expect(HN.valid_hn_id(444)).to be true
      expect(HN.valid_hn_id(5555)).to be true
      expect(HN.valid_hn_id(77777)).to be true
    end
    it 'should not be valid' do
      expect(HN.valid_hn_id("fred")).to be false
      expect(HN.valid_hn_id("")).to be false
    end
  end
end
