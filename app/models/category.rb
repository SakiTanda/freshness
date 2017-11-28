# categories
#
# id    :integer      not null, primary key
# name  :string(20)   
#


class Category < ApplicationRecord

  has_many :foods

end
