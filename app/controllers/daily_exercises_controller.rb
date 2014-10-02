class DailyExercisesController < ApplicationController

  def create
    @daily_exercise = DailyExercise.new(daily_exercise_params)
    @daily_exercise.plan_id = params[:plan_id]
    @daily_exercise.day = params["plan"]["day"]
    @daily_exercise.save!
    redirect_to @daily_exercise.plan
  end

  private

    def daily_exercise_params
      params.require(:daily_exercise).permit(:sets, :reps, :complete, :exercise_name, :exercise_id, :day)
    end 

end
