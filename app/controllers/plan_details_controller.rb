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
    @plan_detail.update(plan_detail_params)
    redirect_to @plan_detail
  end

  def new
    @plan_detail = PlanDetail.new(plan_detail_params)
  end

  def create
    @plan_detail = PlanDetail.new(plan_detail_params)
    @plan_detail.save
    redirect_to @plan_detail
  end

  def destroy
    @plan_detail = PlanDetail.find(params[:id])
    @plan_detail.destroy
    redirect_to plan_details_path
  end

  private

    def plan_detail_params
      params.require(:plan_detail).permit(:sets, :reps, :complete, :plan_id, :exercise_id)
    end
end
