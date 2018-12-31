class AddUsersArraytoResponse < ActiveRecord::Migration[5.1]
  def change
    add_column :responses, :users_array, :string, array: true, default: []
  end
end
