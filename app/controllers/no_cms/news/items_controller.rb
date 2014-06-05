module NoCms
  module News
    class ItemsController < ApplicationController

      def index
        @items_page = params[:page].to_i
        @items_page = 1 if @items_page < 1
        @items_page_size = 10
        @items = Item.includes(:translations).no_drafts.page(@items_page).per(@items_page_size)
      end

      def show
        @item = Item.friendly.find params[:id]
      end

    end
  end
end
