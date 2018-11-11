class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :title
      t.integer :score
      t.text :description
      t.string :badge
      t.string :photo

      t.timestamps
    end
  end
end
