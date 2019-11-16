class AddCompanyIdToOpenQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :open_questions, :company_id, :integer
    add_index :open_questions, :company_id
  end
end
