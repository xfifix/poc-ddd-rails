# frozen_string_literal: true
module Product
module Infrastructure
  module InMemory
    module Repository
    class ProductRepository < ProductRepositoryInterface
      attr_accessor :datas

      def add(product:)
        pp product
        # datas << product.reference
        #pp datas
      end
    end
    end
  end
end
end
