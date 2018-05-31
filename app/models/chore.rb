class Chore < ApplicationRecord
    def self.randomize_chore
      Chore.order("RANDOM()").first.title if Chore
    end
end
