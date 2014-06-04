# This migration comes from no_cms_news (originally 20140604141552)
class AddDraftToNoCmsNewsItemTranslations < ActiveRecord::Migration
  def change
    add_column :no_cms_news_item_translations, :draft, :boolean, default: false
  end
end
