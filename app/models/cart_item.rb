class CartItem < ActiveRecord::Base
  acts_as_shopping_cart_item_for :cart
  create_table :cart_items do |t|
  t.shopping_cart_item_fields # Creates the cart items fields
end
end
