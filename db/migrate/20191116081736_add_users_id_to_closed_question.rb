class AddUsersIdToClosedQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :closed_questions, :user_id, :integer
    add_index :closed_questions, :user_id
  end
end
