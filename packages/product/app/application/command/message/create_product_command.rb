# frozen_string_literal: true

  module Command
      class CreateProductCommand
        attr_reader :reference

        def initialize(reference:)
          @reference = reference
        end
      end
  end
