class FoodsController < ApplicationController

  def index
    # initialize
    params[:search_food_name] = '' if params[:search_food_name].nil?
    params[:search_category_id] = '0' if params[:search_category_id].nil?
    params[:sort_id] = '0' if params[:sort_id].nil?
    params[:search_food_name].strip!
    params[:search_category_id].strip!
    params[:sort_id].strip!

    # call search method
    @foods = Search::Food.new(food_params).search
    
    # define selected values
    @search_food_name = params[:search_food_name]
    @search_category_id = params[:search_category_id]
    @sort_id = params[:sort_id]
  end

  def show 
    @food = Food.find(params[:id])
    @period_1 = Period.find_by(food_id: @food.id, place_id: 1)
    @period_2 = Period.find_by(food_id: @food.id, place_id: 2)
    @period_3 = Period.find_by(food_id: @food.id, place_id: 3)
  end 

  private
    def food_params
      params.permit(
        :search_food_name, 
        :search_category_id,
        :sort_id
      )
    end

end
