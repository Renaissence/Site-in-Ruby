class AddUsersIdToOpenQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :open_questions, :user_id, :integer
    add_index :open_questions, :user_id
  end
end
