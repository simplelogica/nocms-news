# This migration comes from no_cms_news (originally 20140623112418)
class CreateNoCmsNewsCategories < ActiveRecord::Migration
  def change
    create_table :no_cms_news_categories do |t|
      t.timestamps
    end

    create_table :no_cms_news_category_translations do |t|
      t.belongs_to :no_cms_news_category, index: { name: 'index_no_cms_news_category_translations_on_category_id' }
      t.string :locale
      t.string :title
    end
  end
end
