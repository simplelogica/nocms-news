module NoCms::News
  class Item < ActiveRecord::Base

    translates :title, :slug, :body, :draft, :published_at

    extend FriendlyId
    friendly_id :title, use: [:globalize]
    include Concerns::GlobalizeSlugs

    include Concerns::TranslationScopes

    scope :drafts, ->() { where_with_locale(draft: true) }
    scope :no_drafts, ->() { where_with_locale(draft: false) }

    validates :title, :body, presence: true
  end
end
