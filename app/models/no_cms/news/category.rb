module NoCms::News
  class Category < ActiveRecord::Base
    translates :title

    has_and_belongs_to_many :items

    validates :title, presence: true
  end
end
