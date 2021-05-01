class Expenditure < ApplicationRecord
  belongs_to :mariz,{class_name: "Patient"}
end
