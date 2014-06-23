class CreateNoCmsNewsCategoryItemsRelation < ActiveRecord::Migration
  def change
    create_table :no_cms_news_categories_items, id: false do |t|
      t.belongs_to :category
      t.belongs_to :item

      t.timestamps
    end
  end
end
