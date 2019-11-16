class CreateClosedQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :closed_questions do |t|
      t.string :title
      t.boolean :option

      t.timestamps
    end
  end
end
