class StaticPagesController < ApplicationController
  def index
  end
end

  def landing_page 
    @featured_product = product.first
  end
end
