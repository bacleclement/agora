class AddXpToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :xp, :integer
  end
end
