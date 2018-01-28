require 'rails_helper'

describe Test do
  describe '#<<' do
    example ' ##add' do
      s = "ABC"
      s << "D"
      expect(s.size).to eq(4)
    end
  end
end
