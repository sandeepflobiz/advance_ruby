class Physician < ApplicationRecord
  has_many :pictures, as: :imageable
  has_many :appointments
  has_many :patients, through: :appointments
end
