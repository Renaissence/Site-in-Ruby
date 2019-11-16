class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :company_name
      t.string :location
      t.text :job_description
      t.string :contract_time
      t.string :contract_type

      t.timestamps
        
    end
    add_index :jobs, [:job_title, :company_name], unique: true
 
  end
end
