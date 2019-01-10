class AddXpToSchool < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :xp, :integer
  end
end
