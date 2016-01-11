class TrainersController < ApplicationController
  before_action :set_trainer, only: [:show, :edit, :update, :destroy]
  # before_filter :authorize

  def index
    @trainers = Trainer.all
    if current_user == nil
      @trainer = Trainer.new
      render 'choice'
    end
  end

  def search
    if params[:search]
     @trainers = Trainer.search(params[:search]).order("created_at DESC")
     render 'view_from_search'
   else
     @trainers = Trainer.order("created_at DESC")
     render 'view_from_search'
   end
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def new
    @trainer = Trainer.new
  end

  def edit
    if current_user.id == @trainer.id
      render 'edit'
    else
      render 'sessions/new'
    end
  end

  def create
    @trainer = Trainer.new(trainer_params)
     if @trainer.save
       session[:trainer_id] = @trainer.id
       redirect_to @trainer, notice: 'Account created successfully'
     else
       flash[:error] = 'An error occured!'
       render 'new'
     end
  end

  def update
    respond_to do |format|
      if @trainer.update(trainer_params)
        format.html { redirect_to @trainer, notice: 'Trainer was successfully updated.' }
        format.json { render :show, status: :ok, location: @trainer }
      else
        format.html { render :edit }
        format.json { render json: @trainer.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    if current_user.id == @trainer.id
      @trainer.destroy
      redirect_to trainers
    else
      render 'sessions/new'
    end
  end

  private

    def set_trainer
      @trainer = Trainer.find(params[:id])
    end

    def trainer_params
      params.require(:trainer).permit(:name, :image_url, :password, :password_confirmation, :username, :pocketmonster_ids => [])
    end
end
