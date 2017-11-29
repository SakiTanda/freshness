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
  has_many :periods, dependent: :destroy
  has_one :refrigeration_period, -> { where(place_id: 1) }, autosave: true
  has_one :room_period, -> { where(place_id: 3) }, autosave: true
  has_one :freezing_period, -> { where(place_id: 2) }, autosave: true
end
