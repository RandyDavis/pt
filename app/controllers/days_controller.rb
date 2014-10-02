class DaysController < ApplicationController
  def index
    @days = Day.find(params[:id])
    
  end

  def show
    @day = Day.find(params[:id])
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
    @day.update(day_params)
    redirect_to @day
  end

  def new
    @day = Day.new
  end

  def in_category
    render json: day.where(category: params[:category])
  end

  def create
    @day = day.new(day_params)
    @day.save
    redirect_to @day
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to days_path
  end

  private

    def day_params
      params.require(:day).permit(:name, :description, :difficulty)
    end
end
