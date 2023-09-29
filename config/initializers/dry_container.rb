# frozen_string_literal: true
require 'dry/container'

# Dir.glob(Rails.root.join('packages/*/app/dependencies/*.rb')).each do |file|
#   require file
# end

class ProductRepositoryContainer

  extend Dry::Container::Mixin

  register 'repository' do
    Infrastructure::Data::Repository::ProductRepository.new
    #Logger.new(STDOUT)
  end

end


# Import = Dry::AutoInject(ProductRepositoryContainer)

