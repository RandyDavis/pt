class DailyExercise < ActiveRecord::Base
  belongs_to :plan
  has_many :exercises
end
