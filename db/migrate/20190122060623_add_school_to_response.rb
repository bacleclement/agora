class AddSchoolToResponse < ActiveRecord::Migration[5.1]
  def change
    add_reference :responses, :school, foreign_key: true
  end
end
