class VueFile < ApplicationRecord

    def templates
        Template.where("show_id = ? OR form_id = ?", self.id, self.id)
    end
end
