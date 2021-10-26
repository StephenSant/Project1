class LineItemsController < ApplicationController
    def create
      chosen_product = Product.find(params[:product_id])
      
      if @current_cart.products.include?(chosen_product)
        @line_item = current_cart.line_items.find_by(:product_id => chosen_product)
        @line_item.quantity += 1
      else
        @line_item = LineItem.new
        @line_item.cart = @current_cart
        @line_item.product = chosen_product
      end

      @line_item.save
      redirect_to cart_path(@current_cart)
    end
      
    def add_quantity
    end

    def destroy
    end

      private
        def line_item_params
          params.require(:line_item).permit(:quantity,:product_id, :cart_id)
        end
end
