class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.text :mosque_ame
      t.string :adress
      t.integer :mobile_no
      t.string :mutawalli_name 
      t.boolean :requirement

      t.timestamps
    end
  end
end
