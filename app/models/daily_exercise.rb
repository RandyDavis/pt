class DailyExercise < ActiveRecord::Base
  belongs_to :plan
  belongs_to :exercise

  validates_presence_of :plan_id
  validates_presence_of :exercise_id
end
