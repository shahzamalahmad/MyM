class AddRefRolesToUsers < ActiveRecord::Migration[7.0]
  def change
     add_reference :roles, :user, index: true

  end
end
