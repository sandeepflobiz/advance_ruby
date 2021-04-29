class CreateExpenditures < ActiveRecord::Migration[6.0]
  def change
    create_table :expenditures do |t|
      t.boolean :active
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
