# This migration comes from no_cms_news (originally 20140604144242)
class AddPublishedAtToNoCmsNewsItemTranslations < ActiveRecord::Migration
  def change
    add_column :no_cms_news_item_translations, :published_at, :datetime
  end
end
