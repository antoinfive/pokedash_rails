class WelcomeController < ApplicationController
    def index
    # binding.pry
    if params[:search]
      @trainers = Trainer.search(params[:search]).order("created_at DESC")
    else
      @trainers = Trainer.order("created_at DESC")
    end
  end
end
