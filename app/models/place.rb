# places
#
# id          :integer    not null, primary key
# name        :string(20)
#

class Place < ApplicationRecord

  has_many :periods

end
