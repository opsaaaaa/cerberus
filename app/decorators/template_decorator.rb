class TemplateDecorator < Draper::Decorator
  delegate_all
  decorates :template


end
