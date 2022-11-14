class Add < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :mosque_name
    remove_column :articles, :address
  end
end
