class RefrigerationPeriod < Period

  def temperature
    if food.category_id == 2 
      '0 degrees'
    elsif food.category_id == 3
      '3 degrees'
    else 
      '6 degrees'
    end
  end
  
end