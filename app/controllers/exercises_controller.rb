class ExercisesController < ApplicationController
  def index
    @exercises = ['Bench Press', 'Squat', 'Incline', 'Treadmill', 'Eliptical', 'Glute Ham Raises']
  end
end
