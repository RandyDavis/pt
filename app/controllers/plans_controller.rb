class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    plan_params = params.require(:plan).permit!
    @plan.update(plan_params)
    redirect_to @plan
  end
end
