class AddPatientIdToExpenditures < ActiveRecord::Migration[6.0]
  def change
    add_column :expenditures, :patient_id, :integer
    add_index :expenditures, :patient_id
  end
end
