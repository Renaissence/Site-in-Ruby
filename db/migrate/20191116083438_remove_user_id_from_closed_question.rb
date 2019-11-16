class RemoveUserIdFromClosedQuestion < ActiveRecord::Migration[6.0]
  def change

    remove_column :closed_questions, :user_id, :integer
  end
end
