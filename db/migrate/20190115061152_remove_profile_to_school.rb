class RemoveProfileToSchool < ActiveRecord::Migration[5.1]
  def change
    remove_reference :schools, :profile, foreign_key: true
  end
end
