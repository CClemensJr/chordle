class ChoresController < ApplicationController
  def index

  end

  def show

  end

  def new
    @chore = Chore.new
  end

  def create
    @chore = Chore.create(chore_params)

    if @chore.save
      redirect_to action: "chore_lists#index", notice: 'Example was successfully created.'
    else
      render :new
    end
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
