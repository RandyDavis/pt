class PlanDetailsController < ApplicationController
  def index
    @plan_details = Plan_Detail.all
  end
end
