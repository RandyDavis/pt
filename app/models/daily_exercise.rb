class DailyExercise < ActiveRecord::Base
  belongs_to :day
  has_many :exercises
end
