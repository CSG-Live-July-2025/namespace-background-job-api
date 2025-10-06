class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all

    render json: products
  end
end

# module Api
#   module V1
#     class ProductsController < ApplicationController
#     end
#   end
# end

# Namespacing / Versioning
  # - localhost:3000/api/v1/products
  # - localhost:3000/api/v2/products
