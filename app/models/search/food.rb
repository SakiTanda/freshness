
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
    # search all items
    results = ::Food.all

    # search more with conditions
    results = results.where("category_id = ?", @category_id) if @category_id != '0'
    results = results.where("LOWER(name) LIKE ?", "%#{@food_name.downcase}%") if not @food_name.empty?
    
    # create order statement
    if @sort_id == '1'
      results = results.order('foods.name DESC')
    elsif @sort_id == '2'
      results = results.left_outer_joins(:refrigeration_period)
      results = results.order('periods.days DESC, foods.name ASC')
    elsif @sort_id == '3'
      results = results.left_outer_joins(:freezing_period)
      results = results.order('periods.days DESC, foods.name ASC')
    elsif @sort_id == '4'
      results = results.left_outer_joins(:room_period)
      results = results.order('periods.days DESC, foods.name ASC')
    else 
      results = results.order('foods.name ASC')
    end

  end

end
