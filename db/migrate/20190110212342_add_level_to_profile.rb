class AddLevelToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :level, :string
  end
end
