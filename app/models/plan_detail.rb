class PlanDetail < ActiveRecord::Base
  belongs_to :plan
  belongs_to :exercise
  has_many :daily_exercises
  has_many :days, through: :daily_exercises
end
