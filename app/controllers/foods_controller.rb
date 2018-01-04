class FoodsController < ApplicationController

  def index
    # initialize
    params[:search_food_name] = '' if params[:search_food_name].nil?
    params[:search_category_id] = '0' if params[:search_category_id].nil?
    params[:sort_id] = '0' if params[:sort_id].nil?
    params[:search_food_name].strip!

    # call search method
    @search_form = FoodSearchForm.new(food_params)
    @foods = @search_form.search
  end

  def show 
    @food = Food.find(params[:id])
  end 

  private
    def food_params
      params.permit(
        :search_food_name, 
        :search_category_id,
        :search_sort_id
      )
    end

end
