class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.text :description
      t.integer :vote
      t.references :question, foreign_key: true
      t.references :profile, foreign_key: true
      t.integer :upvote
      t.integer :downvote

      t.timestamps
    end
  end
end
