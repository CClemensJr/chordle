class LandingController < ApplicationController
  def index
    @total_chores = Chore.count
    @chores = Chore.all
    @random_chore = Chore.randomize_chore
    @user = User.find(params[:id])
  end
end
