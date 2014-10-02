class DailyExercise < ActiveRecord::Base
  belongs_to :plan
  belongs_to :exercise
end
