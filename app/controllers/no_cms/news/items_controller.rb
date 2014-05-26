module NoCms
  module News
    class ItemsController < ApplicationController

      def index
        @items = Item.includes(:translations)
      end

    end
  end
end
