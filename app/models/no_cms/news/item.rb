module NoCms::News
  class Item < ActiveRecord::Base

    translates :title, :slug, :body, :draft

    extend FriendlyId
    friendly_id :title, use: [:globalize]
    include Concerns::GlobalizeSlugs

    validates :title, :body, presence: true
  end
end
