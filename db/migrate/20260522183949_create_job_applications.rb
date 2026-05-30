class CreateJobApplications < ActiveRecord::Migration[8.1]
  def change
    create_table :job_applications do |t|
      t.string :company_name
      t.string :role_title
      t.string :job_url
      t.string :status
      t.date :applied_date
      t.date :follow_up_date
      t.text :notes

      t.timestamps
    end
  end
end
