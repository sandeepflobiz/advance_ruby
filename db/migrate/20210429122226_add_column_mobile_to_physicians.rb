class AddColumnMobileToPhysicians < ActiveRecord::Migration[6.0]
  def change
    add_column :physicians, :mobile, :string
  end
end
