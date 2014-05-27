module NoCms::News::Concerns
  module GlobalizeSlugs
    extend ActiveSupport::Concern

    included do
    end

    # FriendlyId method
    def should_generate_new_friendly_id?
      translation_for(::Globalize.locale).send(friendly_id_config.slug_column).blank?
    end

    # Set slugs in each translation
    def set_slug normalized_slug = nil
      translations.each { |t| ::Globalize.with_locale(t.locale) { super } }
    end
  end
end
