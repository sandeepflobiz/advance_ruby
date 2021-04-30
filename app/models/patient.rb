class Patient < ApplicationRecord
  has_many :pictures, as: :imageable
  has_many :expenditures
  has_many :appointments
  has_many :physicians, through: :appointments
end
