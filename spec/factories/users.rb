FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "aKarasneh #{n}" }
    name { "Ahmed Karasneh" }
    url { "http://example.com" }
    provider { "github" }
  end
end
