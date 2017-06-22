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


  # function ------------------------------------------

  def self.search(searchText, categoryId, sortId)

    # create outer join statement
    sJoin = "
      LEFT OUTER JOIN periods AS P1
        ON P1.food_id = foods.id
        AND P1.place_id = 1
      LEFT OUTER JOIN periods AS P2
        ON P2.food_id = foods.id
        AND P2.place_id = 2
      LEFT OUTER JOIN periods AS P3
        ON P3.food_id = foods.id
        AND P3.place_id = 3"

    # create order statement
    if sortId == '1'
      sOrder = "foods.name DESC"
    elsif sortId == '2'
      sOrder = "P1.days DESC"
    elsif sortId == '3'
      sOrder = "P2.days DESC"
    elsif sortId == '4'
      sOrder = "P3.days DESC"
    else 
      sOrder = "foods.name ASC"
    end

    # search
    if (searchText.empty? == false && categoryId != "0")
      # search with food name and category id
      Food.
        joins(sJoin).
        where("name LIKE ? AND category_id = ?", "%#{searchText}%", categoryId).
        order(sOrder)
    elsif (searchText.empty? == false)
      # search with food name
      Food.
        joins(sJoin).
        where("name LIKE ?", "%#{searchText}%").
        order(sOrder)
    elsif (categoryId != "0")
      # search with category id
      Food.
        joins(sJoin).
        where("category_id = ?", categoryId).
        order(sOrder)
    else
      # return all
      Food.
        joins(sJoin).
        all.
        order(sOrder)
    end

  end

end
