class Chore < ApplicationRecord
    def random_chore
        self.order("RANDOM()").first
    end
end
