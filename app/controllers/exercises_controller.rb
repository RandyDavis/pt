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
    @exercise.update(exercise_params)
    redirect_to @exercise
  end

  def new
    @exercise = Exercise.new
  end

  def in_category
    render json: Exercise.where(category: params[:category])
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @exercise.save
    redirect_to @exercise
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to exercises_path
  end

  private

    def exercise_params
      params.require(:exercise).permit(:name, :description, :difficulty)
    end


end
