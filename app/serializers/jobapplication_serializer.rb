class JobapplicationSerializer < ActiveModel::Serializer
  attributes :id, :job_id, :job_title, :user_id, :email, :contact_number, :seen
end
