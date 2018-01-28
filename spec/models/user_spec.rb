require 'rails_helper'

describe User, :type => :model do
  describe '#password= ' do
    example '##nil' do
      user = User.new(hashed_password: 'test')
      user.password = nil
      expect(user.hashed_password).to be_nil
    end
  end
end
