class Day < ActiveRecord::Base
  has_many :daily_exercises
  has_many :exercises, through: :daily_exercises
end
