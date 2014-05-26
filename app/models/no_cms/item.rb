module NoCms::News
  class Item < ActiveRecord::Base
    translates :title, :slug, :body
  end
end
