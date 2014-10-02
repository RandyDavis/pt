class PlansController < ApplicationController
  def index
    @plans = Plan.all

  end

  def show
    @plan = Plan.find(params[:id])
    @daily_exercise = DailyExercise.new
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    @plan.update(plan_params)
    redirect_to @plan
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.save
    redirect_to @plan
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    redirect_to plans_path
  end 

  private

    def plan_params
      params.require(:plan).permit(:user_id, :trainer_id, :client_id, :week_of, :total_plans)
    end

end
