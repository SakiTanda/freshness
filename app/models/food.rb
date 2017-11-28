# foods
#
# id          :integer    not null, primary key
# name        :string(20)
# picture     :string(20)
# created_at  :datetime
# updated_at  :datetime
# category_id :integer    foreign key
#

class Food < ApplicationRecord
  belongs_to :category
  has_many :periods
end
