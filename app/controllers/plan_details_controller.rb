class PlanDetailsController < ApplicationController
  def index
    @plan_details = PlanDetail.all
  end

  def show
    @plan_detail = PlanDetail.find(params[:id])
  end

  def edit
    @plan_detail = PlanDetail.find(params[:id])
  end

  def update
    @plan_detail = PlanDetail.find(params[:id])
    plan_detail_params = params.require(:plan_detail).permit!
    @plan_detail.update(plan_detail_params)
    redirect_to @plan_detail
  end
end
