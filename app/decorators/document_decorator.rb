class DocumentDecorator < Draper::Decorator
  delegate_all
  decorates :document

  def properties
    return object.to_json(only: [:id, :name, :template_id])
  end

  def attributes
    return object.to_json(only: [:id, :name, :content, :template_id])
  end

  def content
    return object.content.to_json
  end

end
