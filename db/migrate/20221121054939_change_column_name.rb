class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :mobile_no
    add_column :articles, :mobile_no, :bigint
  end
end
