class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.references :profile, foreign_key: true
      t.string :type
      t.integer :upvote
      t.integer :downvote

      t.timestamps
    end
  end
end
