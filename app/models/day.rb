class Day < ActiveRecord::Base
  has_many :daily_exercises
  has_many :plan_details, through: :daily_exercises
end
