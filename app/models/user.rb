class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :plans

  ROLES = [:trainer, :client]

  # def role_symbols
  #   [role.to_sym]
  # end

  def role?(role_name)
    # TODO
  end
end
