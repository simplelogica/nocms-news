class AddDraftToNoCmsNewsItemTranslations < ActiveRecord::Migration
  def change
    add_column :no_cms_news_item_translations, :draft, :boolean, default: false
  end
end
