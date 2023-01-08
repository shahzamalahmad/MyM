class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :qualification, :string
    add_column :users, :address, :string
    add_column :users, :contact_number, :string
    add_column :users, :resion, :string
  end
end
