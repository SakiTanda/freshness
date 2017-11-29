class FoodPresenter < ModelPresenter
  delegate :category_id, to: :object

  def color_class
    if category_id == 2 
      'meat'
    elsif category_id == 3
      'dairy'
    else 
      'vege'
    end  
  end
  
  def degree
    if category_id == 2 
      '0 degrees'
    elsif category_id == 3
      '3 degrees'
    else 
      '6 degrees'
    end  
  end
  
  def ref_tab_button_block
    if object.refrigeration_period.present?
      tab_button_block('Refrigeration', 
              'active ' << color_class << '_bg_color_dark', 
              '#1b')
    end
  end
  
  def room_tab_button_block
    if object.room_period.present?
      tab_button_block('Room temperature', 
              'active ' << color_class << '_bg_color_dark', 
              '#1b')
    end
  end
  
  def freez_tab_button_block
    if object.freezing_period.present?
      tab_button_block('Freezing', 
              color_class << '_bg_color_dark', 
              '#2b')
    end
  end

  def tab_button_block(label_text, class_name, path, options = {})
    markup(:li, class: class_name) do |m|
      m << link_to(label_text, path, { 'data-toggle' => 'tab' })
    end
  end
    
end
