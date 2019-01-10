class AddProfileToSchool < ActiveRecord::Migration[5.1]
  def change
    add_reference :schools, :profile, foreign_key: true
  end
end
