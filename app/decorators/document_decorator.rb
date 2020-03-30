class DocumentDecorator < Draper::Decorator
  delegate_all
  decorates :document

  def properties
    return object.to_json(only: [:id, :name, :template_id])
  end

end
