# periods
#
# id        :integer    not null, primary key
# days      :integer    not null
# detail    :text       not null
# picture   :string     not null
# food_id   :integer    foreign key
# place_id  :integer    foreign key
#

class Period < ApplicationRecord

  belongs_to :food
  belongs_to :place

end
