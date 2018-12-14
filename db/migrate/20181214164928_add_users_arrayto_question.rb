class AddUsersArraytoQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :users_array, :string, array: true, default: []
  end
end
