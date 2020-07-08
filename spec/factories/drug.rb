FactoryBot.define do
  factory :drug do
    sequence(:title_ru) { |n| "Drug #{n}" }
  end
end