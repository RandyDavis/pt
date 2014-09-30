class Plan < ActiveRecord::Base
  belongs_to :user
  has_many :plan_details
  has_many :exercises, through: :plan_details
end
