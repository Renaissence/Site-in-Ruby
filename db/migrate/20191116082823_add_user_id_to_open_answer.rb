class AddUserIdToOpenAnswer < ActiveRecord::Migration[6.0]
  def change
    add_column :open_answers, :user_id, :integer
    add_index :open_answers, :user_id
  end
end
