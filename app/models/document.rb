class Document < ApplicationRecord
    belongs_to :template

    def merge_content
        return self.content.merge(self.template.content)
    end

    def tenons
        return merge_content()
    end
end
