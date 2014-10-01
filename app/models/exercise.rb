class Exercise < ActiveRecord::Base
  has_many :categories
  has_many :daily_exercises
  has_one :video
end
