class FoodSearchPresenter < ModelPresenter
  delegate :category_id, :name, :id, :refrigeration_period, :freezing_period, :room_period, to: :object
  
  def select_option(label_text, value, param_value)
    markup do |m|
      if value == param_value      
        m.option(label_text, value: value, selected: '')
      else
        m.option(label_text, value: value)
      end
    end
  end  

  def food_name_block
    if category_id == 1
      @food_class_name = 'vege_color_dark result-item-link'
    elsif category_id == 2
      @food_class_name = 'meat_color_dark result-item-link'
    elsif category_id == 3
      @food_class_name = 'dairy_color_dark result-item-link'
    end
    
    markup(:tr) do |m|
      m.td(class: @food_class_name) do
        m << link_to(name, {controller: 'foods', action: 'show', id: id})
      end
    end
  end
  
  def food_period_block
    markup do |m|
      if refrigeration_period.present?
        m.tr do
          m.td 'Refrigerator: ' << refrigeration_period.days.to_s << ' days'
        end
      end
      if freezing_period.present?
        m.tr do
          m.td 'Freezer: ' << freezing_period.days.to_s << ' days'
        end
      end
      if room_period.present?
        m.tr do
          m.td 'Room temperature: ' << room_period.days.to_s << ' days'
        end
      end
    end
  end
  
end
