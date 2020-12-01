FactoryBot.define do
  factory :job do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:body) { |n| "MyText #{n}" }
    sequence(:slug) { |n| "jobs-list-#{n}" }
  end
end
