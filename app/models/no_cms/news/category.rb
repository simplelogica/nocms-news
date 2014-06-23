module NoCms::News
  class Category < ActiveRecord::Base
    translates :title
  end
end
