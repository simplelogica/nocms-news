require 'spec_helper'

describe NoCms::News::Category do
  it_behaves_like "model with required attributes", :nocms_news_category, [:title]
end
