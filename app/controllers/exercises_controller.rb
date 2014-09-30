class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    exercise_params = params.require(:exercise).permit!
    @exercise.update(exercise_params)
    redirect_to @exercise
  end
end
