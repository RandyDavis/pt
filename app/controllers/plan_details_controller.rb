class PlanDetailsController < ApplicationController
  def index
    @plan_details = Plan_Detail.all
  end

  def show
    @plan_detail = Plan_Detail.find(params[:id])
  end
end
