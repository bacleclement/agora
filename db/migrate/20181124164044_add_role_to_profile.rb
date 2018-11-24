class AddRoleToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :role, :string
  end
end
