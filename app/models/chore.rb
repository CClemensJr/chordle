class Chore < ApplicationRecord
  belongs_to :user

  def self.randomize_chore
    Chore.order("RANDOM()").first.title if Chore
  end
end
