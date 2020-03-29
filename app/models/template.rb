class Template < ApplicationRecord

    has_many :documents
    belongs_to :show, class_name: "VueFile", foreign_key: "show_id"
    belongs_to :form, class_name: "VueFile", foreign_key: "form_id"
end

