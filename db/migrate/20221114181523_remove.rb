class Remove < ActiveRecord::Migration[7.0]
  def change


    remove_column :articles, :mosque_ame
    remove_column :articles, :adress

  end
end
