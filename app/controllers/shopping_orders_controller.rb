class ShoppingOrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shopping_order, only: [:show, :edit, :update, :destroy]

  # GET /shopping_orders
  # GET /shopping_orders.json
  def index
    @shopping_orders = ShoppingOrder.all
  end

  # GET /shopping_orders/1
  # GET /shopping_orders/1.json
  def show
  end

  # GET /shopping_orders/new
  def new
    @shopping_order = ShoppingOrder.new
  end

  # GET /shopping_orders/1/edit
  def edit
  end

  # POST /shopping_orders
  # POST /shopping_orders.json
  def create
    @shopping_order = ShoppingOrder.new(shopping_order_params)
    @shopping_order.add_lineitems_from_cart(current_cart) 
    @shopping_order.customer_id = current_user.id

    respond_to do |format|
      if @shopping_order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil

        format.html { redirect_to root_path, notice: 'Thank you for your order' }
        format.json { render :show, status: :created, location: @shopping_order }
      else
        @cart = current_cart
        format.html { render :new }
        format.json { render json: @shopping_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopping_orders/1
  # PATCH/PUT /shopping_orders/1.json
  def update
    respond_to do |format|
      if @shopping_order.update(shopping_order_params)
        format.html { redirect_to @shopping_order, notice: 'Shopping order was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopping_order }
      else
        format.html { render :edit }
        format.json { render json: @shopping_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_orders/1
  # DELETE /shopping_orders/1.json
  def destroy
    @shopping_order.destroy
    respond_to do |format|
      format.html { redirect_to shopping_orders_url, notice: 'Shopping order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_order
      @shopping_order = ShoppingOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_order_params
      params.require(:shopping_order).permit(:customer_id, :payMethod, :total, :currentStatus)
    end
end
