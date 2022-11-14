class AddColumnImamName < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :imam_name, :string
  end
end
