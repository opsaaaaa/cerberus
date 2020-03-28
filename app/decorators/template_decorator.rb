class TemplateDecorator < Draper::Decorator
  delegate_all
  decorates :template

  def vue
    object.vue
  end

end
