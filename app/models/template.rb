require "chips"

class Template < ApplicationRecord
    has_many :documents

    # include Chips::Template

    def vue
        return self.vue_cache if self.vue_cache.present?
        self.vue_cache = Chips::Template::Processor.new(
            self.body, 
            mortises: self.keys, 
            tenons: get_vue_tenons
        ).generate
        self.save!
        return self.vue_cache
    end
    
    def get_vue_tenons
        return self.keys.map {|key,val| [key,"{{ #{key} }}"] }.to_h
    end

end

