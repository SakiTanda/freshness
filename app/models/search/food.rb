
class Search::Food < ApplicationRecord

  ATTRIBUTES = %i(
    food_name
    category_id
    sort_id
  )
  attr_accessor(*ATTRIBUTES)

  def initialize(attr)
    @food_name = attr[:search_food_name]
    @category_id = attr[:search_category_id]
    @sort_id = attr[:sort_id]
  end

  def search
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

    # search all items
    results = ::Food.joins(sJoin).all

    # search more with conditions
    results = results.where("category_id = ?", @category_id) if @category_id != '0'
    results = results.where("LOWER(name) LIKE ?", "%#{@food_name.downcase}%") if not @food_name.empty?
    
    # create order statement
    if @sort_id == '1'
      sOrder = "foods.name DESC"
    elsif @sort_id == '2'
      sOrder = "P1.days DESC, foods.name ASC"
    elsif @sort_id == '3'
      sOrder = "P2.days DESC, foods.name ASC"
    elsif @sort_id == '4'
      sOrder = "P3.days DESC, foods.name ASC"
    else 
      sOrder = "foods.name ASC"
    end

    # order
    results = results.order(sOrder)
  end

end
