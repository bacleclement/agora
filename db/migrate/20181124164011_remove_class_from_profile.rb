class RemoveClassFromProfile < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :class, :string
  end
end
