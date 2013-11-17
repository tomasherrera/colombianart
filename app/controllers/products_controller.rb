class ProductsController < ApplicationController
  def index
    @products = current_user.products.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    @product.user = current_user
    if @product.save
      redirect_to products_path, :notice => "Product successfully added"
    else
      render action: "new", alert: "Errors ocurred while saving"
    end 
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
