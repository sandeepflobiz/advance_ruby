class AddColumnMobileToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :mobile, :string
  end
end
