class Plan < ActiveRecord::Base
  belongs_to :user
  has_many :daily_exercises
  has_many :exercises, through: :daily_exercises
end
