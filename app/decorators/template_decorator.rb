class TemplateDecorator < Draper::Decorator
  delegate_all
  decorates :template

  def vue_from
    return object.form.body.html_safe
  end

  def vue_show
    return object.show.body.html_safe
  end

end
