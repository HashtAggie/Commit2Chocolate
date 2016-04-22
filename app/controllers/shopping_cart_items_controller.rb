class ShoppingCartItemsController < ApplicationController
before_filter :ensure_session

  def create
    product_id = shopping_cart_item_params[:product_id]
    quantity = shopping_cart_item_params[:quantity].to_i
    session[:shopping_cart][product_id] ||= 0
    session[:shopping_cart][product_id] += quantity
    redirect_to products_path
  end


  def update
    quantity = 1
    session[:shopping_cart][product_id] += quantity
    redirect_to cartoverview_path 
  end

  def increase

  end

  def destroy
     session[:shopping_cart] = nil
     redirect_to cartoverview_path
  end


  protected

    def shopping_cart_item_params
      params.permit(:product_id, :product_name, :quantity)
    end

end
