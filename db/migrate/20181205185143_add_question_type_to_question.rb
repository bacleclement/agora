class AddQuestionTypeToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :question_type, :string
  end
end
