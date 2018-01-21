class Fresh::FoodSearchForm
  include ActiveModel::Model
  
  attr_accessor :search_category_id, :search_food_name, :search_sort_id
    
  def search
    rel = Food
    
    # with conditions
    rel = rel.where(category_id: search_category_id) if search_category_id.present? && search_category_id != '0'
    rel = rel.where("LOWER(name) LIKE ?", "%#{search_food_name.downcase}%") if search_food_name.present?
    rel = rel.distinct

    # with order
    if search_sort_id == '1'
      rel = rel.order('foods.name DESC')
    elsif search_sort_id == '2'
      rel = rel.left_outer_joins(:refrigeration_period)
      rel = rel.order('periods.days DESC, foods.name ASC')
    elsif search_sort_id == '3'
      rel = rel.left_outer_joins(:freezing_period)
      rel = rel.order('periods.days DESC, foods.name ASC')
    elsif search_sort_id == '4'
      rel = rel.left_outer_joins(:room_period)
      rel = rel.order('periods.days DESC, foods.name ASC')
    else 
      rel = rel.order('foods.name ASC')
    end    
  end
  
end
