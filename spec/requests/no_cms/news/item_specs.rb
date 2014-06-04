require 'spec_helper'

describe NoCms::News::Item do

  context "when visiting item index" do

    let(:news_items) { create_list :nocms_news_item, 3 }
    let(:draft_news_items) { create_list :nocms_news_item, 3, draft: true }

    before do
      news_items
      draft_news_items
      visit no_cms_news.items_path
    end

    it("should find the page") { expect(page.status_code).to eq 200 }
    it("should display news items") do
      news_items.each do |item|
        expect(page).to have_selector('h2', text: item.title)
      end
    end

    it("should not display drafts") do
      draft_news_items.each do |item|
        expect(page).to_not have_selector('h2', text: item.title)
      end
    end

    it("should link to news item pages") do
      news_items.each do |item|
        expect(page).to have_selector "a[href='#{no_cms_news.item_path(item)}']", text: I18n.t('no_cms.news.items.item.read_more', title: item.title)
      end
    end

  end

  context "when visiting an item page" do

    let(:news_item) { create :nocms_news_item }

    before do
      visit no_cms_news.item_path news_item
    end

    it("should find the page") { expect(page.status_code).to eq 200 }
    it("should display the news item") do
      expect(page).to have_selector('h1', text: news_item.title)
      expect(page).to have_content(news_item.body)
    end

  end

end
