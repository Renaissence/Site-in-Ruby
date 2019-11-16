class RemoveUserIdFromOpenQuestion < ActiveRecord::Migration[6.0]
  def change

    remove_column :open_questions, :user_id, :integer
  end
end
