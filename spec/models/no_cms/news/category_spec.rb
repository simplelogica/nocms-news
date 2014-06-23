require 'spec_helper'

describe NoCms::News::Category do
  it_behaves_like "model with required attributes", :nocms_news_category, [:title]
  it_behaves_like "model with has and belongs to many relationship", :nocms_news_category, :nocms_news_item, :items, :categories

end
