class RemoveTypeFromQuestion < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :type, :string
  end
end
