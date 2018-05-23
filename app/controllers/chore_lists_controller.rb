class ChoreListsController < ApplicationController
    def index
        @chore_lists = Chore.find(all)
    end

    def show

    end
end
