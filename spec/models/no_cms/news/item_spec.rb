require 'spec_helper'

describe NoCms::News::Item do
  it_behaves_like "model with required attributes", :nocms_news_item, [:title, :body]
  it_behaves_like "model with slug", :nocms_news_item, :title

  context "when publishing" do
    subject { item }

    context "a new item" do
      let(:item) { create :nocms_news_item }

      it("should publish now") { expect(item.published_at).to be_between(2.seconds.ago, Time.now) }
    end

    context "a new item with a publish_date" do
      let(:publish_date) { 7.days.ago }
      let(:item) { create :nocms_news_item, published_at: publish_date }

      it("should publish in the publish date") { expect(item.published_at).to eq publish_date }
    end

    context "an existing item" do
      let(:item) { create :nocms_news_item, draft: true }

      before { item.update_attributes draft: false }

      it("should publish now") { expect(item.published_at).to be_between(2.seconds.ago, Time.now) }
    end

    context "an existing item with a publish_date" do
      let(:publish_date) { 7.days.ago }
      let(:item) { create :nocms_news_item, draft: true }

      before { item.update_attributes draft: false, published_at: publish_date }

      it("should publish in the publish date") { expect(item.published_at).to eq publish_date }
    end

  end

  context "when unpublishing" do
    subject { item }

    context "a new item" do
      let(:item) { create :nocms_news_item, draft: true }

      it("should not have publish date") { expect(item.published_at).to be_nil }
    end

    context "a new item with a publish_date" do
      let(:publish_date) { 7.days.ago }
      let(:item) { create :nocms_news_item, published_at: publish_date }

      it("should publish in the publish date") { expect(item.published_at).to eq publish_date }
    end

    context "an existing item" do
      let(:item) { create :nocms_news_item }

      before { item.update_attributes draft: true }

      it("should publish now") { expect(item.published_at).to be_nil }
    end

    context "an existing item with a publish_date" do
      let(:publish_date) { 7.days.ago }
      let(:item) { create :nocms_news_item }

      before { item.update_attributes draft: true, published_at: publish_date }

      it("should publish in the publish date") { expect(item.published_at).to eq publish_date }
    end

  end
end
