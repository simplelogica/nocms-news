module NoCms::News
  class Item < ActiveRecord::Base

    translates :title, :slug, :body, :draft, :published_at

    class Translation
      before_save :set_published_at

      def set_published_at
        # We set the published at to NOW if it had no value, the item is new and not draft
        self.published_at = Time.now if self.published_at.nil? && self.new_record? && !self.draft
        # We set the published at to NOW if it had no value and we change from draft to no draft
        self.published_at = Time.now if self.published_at.nil? && self.draft_was && !self.draft
        # We set the published at to nil if the value has not changed now and we change from no draft to draft
        self.published_at = nil if !self.published_at_changed? && !self.draft_was && self.draft
      end

    end

    extend FriendlyId
    friendly_id :title, use: [:globalize]
    include Concerns::GlobalizeSlugs

    include Concerns::TranslationScopes

    scope :drafts, ->() { where_with_locale(draft: true) }
    scope :no_drafts, ->() { where_with_locale(draft: false) }

    validates :title, :body, presence: true
  end
end
