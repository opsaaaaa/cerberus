class Document < ApplicationRecord
    belongs_to :template
    before_validation :convert_string_content_to_json

    def merge_content
        # return self.content + self.template.content
        return self.content
    end

    def tenons
        return merge_content()
    end

    private

    def convert_string_content_to_json
        # $stdout.puts(self.content)
        # $stdout.puts(JSON.parse(self.content))
        # self.content = JSON.parse(self.content)
    end
end
