require 'spec_helper'

describe NoCms::News::Item do
  it_behaves_like "model with required attributes", :nocms_news_item, [:title, :body]
  it_behaves_like "model with slug", :nocms_news_item, :title
end
