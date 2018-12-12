class ProductsController < ApplicationController
before_action :set_product, only: [:edit, :update]

  def index
    @products = Product.all.order(created_at: :DESC)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create!(product_params)
    if @product.save
      flash[:notice] = "成功建立 Product"
      redirect_to root_path
    else
      flash[:alert] = @product.errors.full_messages.to_sentence
      redirect_back(fallback_location: new_product_path)
    end
  end

  def update
    if @product.update_attributes(product_params)
      flash[:notice] = "成功更新 Product"
      redirect_to root_path
    else
      flash[:alert] = @product.errors.full_messages.to_sentence
      redirect_back(fallback_location: edit_product_path)
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :image)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
