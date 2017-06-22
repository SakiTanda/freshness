class FoodsController < ApplicationController

  def index
    # initialize
    if params[:searchText] == nil
      params[:searchText] = ""
    end
    if params[:category] == nil
      params[:category] = "0"
    end
    if params[:sort] == nil
      params[:sort] = "0"
    end

    params[:searchText].strip!
    params[:category].strip!
    params[:sort].strip!

    # call search method
    @foods = Food.search(params[:searchText], params[:category], params[:sort])
    
    # define selected values
    @search_text = params[:searchText]
    @category_id = params[:category]
    @sort_id = params[:sort]
  end

  def show 
    @food = Food.find(params[:id])
    @period_1 = Period.find_by(food_id: @food.id, place_id: 1)
    @period_2 = Period.find_by(food_id: @food.id, place_id: 2)
    @period_3 = Period.find_by(food_id: @food.id, place_id: 3)
  end 

end
