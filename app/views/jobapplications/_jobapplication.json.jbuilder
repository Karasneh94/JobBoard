json.extract! jobapplication, :id, :job_id, :job_title, :user_id, :email, :contact_number, :seen, :created_at, :updated_at
json.url jobapplication_url(jobapplication, format: :json)
