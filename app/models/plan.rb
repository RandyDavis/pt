class Plan < ActiveRecord::Base
  belongs_to :trainer, :class_name => 'User'
  belongs_to :client, :class_name => 'User'
  has_many :daily_exercises
  has_many :exercises, through: :daily_exercises
end
