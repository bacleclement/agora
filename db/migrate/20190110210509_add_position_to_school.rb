class AddPositionToSchool < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :position, :integer
  end
end
