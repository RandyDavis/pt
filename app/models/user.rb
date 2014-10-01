class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :plans

  # after_create :default_role

  ROLES = [:trainer, :client]

  def role?(role)
    ROLES.include? role.to_s
  end

  # private
  
  # def default_role
  #   self.role = 'client'
  # end
end
