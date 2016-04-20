class ShoppingCartItemsController < ApplicationController
  def create
    session[:shopping_cart] ||= {}
    product_id = shopping_cart_item_params[:product_id]
    quantity = shopping_cart_item_params[:quantity].to_i
    session[:shopping_cart][product_id] ||= 0
    session[:shopping_cart][product_id] += quantity
    redirect_to products_path
  end

  def update
  end

  def destroy
  end

    protected

    def shopping_cart_item_params
      params.permit(:product_id, :quantity)
    end

end
