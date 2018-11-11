class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.references :school, foreign_key: true
      t.string :city
      t.string :username
      t.integer :age
      t.string :sexe
      t.string :class
      t.string :grade

      t.timestamps
    end
  end
end
