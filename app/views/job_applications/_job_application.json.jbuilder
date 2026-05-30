json.extract! job_application, :id, :company_name, :role_title, :job_url, :status, :applied_date, :follow_up_date, :notes, :created_at, :updated_at
json.url job_application_url(job_application, format: :json)
