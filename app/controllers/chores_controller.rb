class ChoresController < ApplicationController
  def index

  end

  def show

  end

  def new
    @chore = Chore.new
  end

  def create
    @chore = Chore.create(params[:chore])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def chore_params
    params.require(:chore).permit(:name, :description, :priority, :time_for_completion)
  end
end
