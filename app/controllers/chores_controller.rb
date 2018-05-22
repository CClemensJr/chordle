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
      format.html { redirect_to @chore_list, notice: 'Example was successfully created.' }
    else
      format.html { render :new }
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
