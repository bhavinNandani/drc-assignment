class Doctor < ApplicationRecord
  has_one :user, as: :rolable, dependent: :destroy

  has_many :appointments
  has_many :patients, through: :appointments
end
