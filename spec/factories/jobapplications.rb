FactoryBot.define do
  factory :jobapplication do
    job_id { "MyString" }
    job_title { "MyString" }
    user_id { "MyString" }
    email { "MyString" }
    contact_number { "MyString" }
    seen { false }
  end
end
