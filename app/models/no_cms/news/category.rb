module NoCms::News
  class Category < ActiveRecord::Base
    translates :title

    has_and_belongs_to_many :items, class_name: 'NoCms::News::Item'

    validates :title, presence: true
  end
end
