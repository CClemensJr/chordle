class Chore < ApplicationRecord
    def self.randomize_chore
        Chore.order("RANDOM()").first.title
    end
end
