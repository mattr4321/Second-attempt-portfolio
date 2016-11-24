class OrdersController < ApplicationController
    
    
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
    respond_to do |format|
      if @product.destroy
        format.html { redirect_to @product, notice: 'Product was successfully destroyed.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
end