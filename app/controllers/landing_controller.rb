class LandingController < ApplicationController
  def index
    @user = User.find(params[:id])
    
    if Chore.nil?
      redirect_to new_chore_path
    else
      @total_chores = Chore.count
      @chores = Chore.all
      @random_chore = Chore.randomize_chore
    end
  end
end
