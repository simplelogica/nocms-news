# This migration comes from no_cms_news (originally 20140526134514)
class CreateNoCmsItems < ActiveRecord::Migration
  def change

    create_table :no_cms_news_items do |t|
      t.timestamps
    end

    create_table :no_cms_news_item_translations do |t|
      t.belongs_to :no_cms_news_item, index: true
      t.string :locale
      t.string :title
      t.string :slug
      t.text :body
    end

  end
end
