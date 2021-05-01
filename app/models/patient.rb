class Patient < ApplicationRecord
  has_many :pictures, as: :imageable
  has_many :kharcha, {class_name: "Expenditure",foreign_key: "mariz_id"}
  has_many :appointments
  has_many :physicians, through: :appointments
end
