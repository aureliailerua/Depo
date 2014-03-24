#---
# If  a cart record is not found (which will happen if the ID is nil or invalid for any reason), then
# this method will proceed to create a new Cart, store the ID of the created cart
# into the session, and then return the new cart.

module CurrentCart
  extend ActiveSupport::Concern

  private

    def set_cart 
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
end