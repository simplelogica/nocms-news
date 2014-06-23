# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nocms_news_category, class: NoCms::News::Category do
    title { Faker::Lorem.sentence }
  end
end
