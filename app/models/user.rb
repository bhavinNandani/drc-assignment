class User < ApplicationRecord
	# before_create :set_rollable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :rolable, polymorphic: true


  def get_full_name
    "#{first_name} #{last_name}"
  end

  def set_rollable
  	self.rolable =  Doctor.last
	end
end
