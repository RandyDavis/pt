class Exercise < ActiveRecord::Base
  belongs_to :category
  has_many :plan_details
  has_many :plans, through: :plan_details
  has_one :video
end
