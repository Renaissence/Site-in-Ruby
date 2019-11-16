class CreateOpenQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :open_questions do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
