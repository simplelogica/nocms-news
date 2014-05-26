require 'spec_helper'

describe NoCms::News::Item do

  context "when visiting item index" do

    let(:news_items) { create_list :nocms_news_item, 3 }

    before do
      news_items
      visit no_cms_news.items_path
    end

    it("should find the page") { expect(page.status_code).to eq 200 }
    it("should display news items") do
      news_items.each do |item|
        expect(page).to have_selector('h2', text: item.title)
      end
    end

  end

end
