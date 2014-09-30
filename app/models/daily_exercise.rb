class DailyExercise < ActiveRecord::Base
  belongs_to :plan_detail
  belongs_to :day
end
