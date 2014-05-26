module NoCms
  module News
    class ItemsController < ApplicationController

      def index
        @items = Item.includes(:translations)
      end

      def show
        @item = Item.find params[:id]
      end

    end
  end
end
