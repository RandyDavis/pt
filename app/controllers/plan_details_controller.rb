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
end
