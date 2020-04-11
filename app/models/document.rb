class Document < ApplicationRecord
    belongs_to :template
    before_save :parse_json_content

    def merge_content
        # return self.content + self.template.content
        return self.content
    end

    def tenons
        return merge_content()
    end

    private

    def parse_json_content
        if self.content.is_a? String
            self.content = JSON.parse(self.content)
        end
    end
end
