# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nocms_news_item, class: NoCms::News::Item do
    title { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }
  end
end
