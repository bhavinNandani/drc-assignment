class Patient < ApplicationRecord
	has_one :user, as: :rolable, dependent: :destroy
	has_many :appointments
  has_many :physicians, through: :appointments
end
