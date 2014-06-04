module NoCms
  module News
    class ItemsController < ApplicationController

      def index
        @items = Item.includes(:translations).no_drafts
      end

      def show
        @item = Item.friendly.find params[:id]
      end

    end
  end
end
