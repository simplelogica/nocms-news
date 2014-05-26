module NoCms::News
  class Item < ActiveRecord::Base
    translates :title, :slug, :body
    validates :title, :body, presence: true
  end
end
