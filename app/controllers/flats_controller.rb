class FlatsController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show; end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(flat_params)
    @flat.save
    redirect_to flat_path(@flat)
  end

  def edit; end

  def update
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :details, :completed)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

end
