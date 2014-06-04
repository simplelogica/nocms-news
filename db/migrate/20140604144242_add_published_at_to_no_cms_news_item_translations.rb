class AddPublishedAtToNoCmsNewsItemTranslations < ActiveRecord::Migration
  def change
    add_column :no_cms_news_item_translations, :published_at, :datetime
  end
end
