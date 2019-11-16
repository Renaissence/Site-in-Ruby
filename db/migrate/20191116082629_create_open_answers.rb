class CreateOpenAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :open_answers do |t|
      t.integer :question_id
      t.string :content

      t.timestamps
    end
  end
end
