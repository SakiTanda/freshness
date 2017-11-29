class FormPresenter
  include HtmlBuilder

  attr_reader :form_builder, :view_context
  delegate :label, :link_to, :text_field, :password_field, :check_box, :radio_button, :text_area, to: :form_builder
    
  def initialize(form_builder, view_context)
    @form_builder = form_builder
    @view_context = view_context
  end
  
end