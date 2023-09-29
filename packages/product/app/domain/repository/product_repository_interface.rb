# frozen_string_literal: true
module Product
module Domain
  module Repository
  class ProductRepositoryInterface
    extend AutowiredRepository
    def add(product:)
      raise StandardError
    end
  end
  end
end
end

