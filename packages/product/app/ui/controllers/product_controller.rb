# frozen_string_literal: true
module Product
  module Ui
    module Controllers
    class ProductController < ApplicationController
      def index
        Product::Application::Command::Handler::CreateProduct.call('')
        render 'views/index'
      end

      def create
        render 'views/index'

      end

      def show
        render 'views/index'
      end
    end
    end
  end
end
