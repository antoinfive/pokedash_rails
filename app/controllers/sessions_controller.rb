class SessionsController < ApplicationController
  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.find_by(username: params[:username])
      if @trainer && @trainer.authenticate(params[:password])
        session[:trainer_id] = @trainer.id
        redirect_to @trainer, notice: "Login Succesful"
      else
        @trainer = Trainer.new
        flash[:error] = 'Bad username and/or password'
        render :new
    end
  end

  def destroy
    session[:trainer_id] = nil
    redirect_to root_path, notice: "You have been logged out!"
  end
end
