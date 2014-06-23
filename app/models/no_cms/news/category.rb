module NoCms::News
  class Category < ActiveRecord::Base
    translates :title

    validates :title, presence: true
  end
end
