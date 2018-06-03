class LandingController < ApplicationController
  def index
    @total_chores = Chore.count
  end
end
