class User < ApplicationRecord
  before_validation do
    self.name_for_index = name.downcase if name
  end
  
  def password=(raw_password)
    if raw_password.nil?
      self.hashed_password = nil
    elsif raw_password.kind_of?(String)
      self.hashed_password = BCrypt::Password.create(raw_password)
    end
  end
end
