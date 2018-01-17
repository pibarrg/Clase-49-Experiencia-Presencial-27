class ProductsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @product = Product.new
  end

  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.build(product_params)
    if @product.save
      redirect_to category_path(@category), notice: 'Se creó exitosamente el producto'
    else
      redirect_to category_path(@category), alert: 'Cueck'
    end
  end

  protected
  def product_params
    params.require(:product).permit(:name, :price, :category_id)
  end

end
