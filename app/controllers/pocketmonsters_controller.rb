class PocketmonstersController < ApplicationController
  before_action :set_pocketmonster, only: [:show, :edit, :update, :destroy]
  def index
    @pocketmonsters = Pocketmonster.all
  end

  def show
    @pocketmonster = Pocketmonster.find(params[:id])
  end


  def new
    @pocketmonster = Pocketmonster.new
  end


  def edit
  end

  def create
    @pocketmonster = Pocketmonster.new(pocketmonster_params)

    respond_to do |format|
      if @pocketmonster.save
        format.html { redirect_to @pocketmonster, notice: 'Pocketmonster was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @pocketmonster.update(pocketmonster_params)
        format.html { redirect_to @pocketmonster, notice: 'Pocketmonster was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  def destroy
    @pocketmonster.destroy
    respond_to do |format|
      format.html { redirect_to pocketmonsters_url, notice: 'Pocketmonster was successfully destroyed.' }
    end
  end

  private

    def set_pocketmonster
      @pocketmonster = Pocketmonster.find(params[:id])
    end

    def pocketmonster_params
      params.require(:pocketmonster).permit(:name, :image_url, :kind)
    end
end
