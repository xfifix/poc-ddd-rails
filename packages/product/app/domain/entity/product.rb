# frozen_string_literal: true
module Product
  module Domain
    class Product
      attr_accessor :reference, :name

      # def self.assemble(reference:)
      #   new(reference: reference)
      # end

      def initialize(reference:, name: nil)
        self.reference = reference
      end
    end
  end
end

