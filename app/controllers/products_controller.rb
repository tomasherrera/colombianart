class ProductsController < ApplicationController
  before_filter :authenticate_user!, only: [:show, :create, :destroy]
  def index
    @products = current_user.products.all
  end

  def show
    @product = Product.find params[:id]
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
    @product = Product.find params[:id]
    if @product.destroy
      redirect_to products_path, :notice => "Product successfully deleted"
    else
      render action: "index", alert: "Errors ocurred while deleting"
    end 
  end
end
