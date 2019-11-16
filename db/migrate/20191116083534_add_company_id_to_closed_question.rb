class AddCompanyIdToClosedQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :closed_questions, :company_id, :integer
    add_index :closed_questions, :company_id
  end
end
