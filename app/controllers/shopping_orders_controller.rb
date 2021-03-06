class ShoppingOrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shopping_order, only: [:show, :edit, :update, :destroy]

  # GET /shopping_orders
  # GET /shopping_orders.json
  def index
    @shopping_orders = ShoppingOrder.all.sort { |a,b|  b.created_at <=> a.created_at}
    @currentUsersOrders = ShoppingOrder.where(customer_id: current_user.id).to_a
  end

  # GET /shopping_orders/1
  # GET /shopping_orders/1.json
  def show
    @shopping_order_comment = ShoppingOrderComment.new
    @locations = Location.all
    @items = Item.all
    respond_to do |format|
      format.html 
      format.pdf do
         pdf = OrderPdf.new(@shopping_order, view_context)
         send_data pdf.render, filename: "Order_#{@shopping_order.id}.pdf", type: "application/pdf", disposition: "inline"
      end
    end

  end

  # GET /shopping_orders/new
  def new
    @shopping_order = ShoppingOrder.new
    @items = Item.all
    @lineitems = Lineitem.all
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
    @shopping_order.currentStatus = "Submited"


    respond_to do |format|
      if @shopping_order.save
        
        @packing_job=createAPackingJob(@shopping_order.id)
        @shipping_job=createAshippingManifest(@shopping_order.id)
        @message  = "New order created"
        @adminnoti=createAdminNotification(@shopping_order.id, @message)
        

        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        format.html { redirect_to root_path, notice: 'Thank you for your order' }
        UserMailer.created_order_email(current_user).deliver
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
        if @shopping_order.currentStatus == "Packed and ready to ship"
          @packing_job = PackingJob.where(shoppingOrder_id: @shopping_order.id)
          packingHash= Hash.new
          packingHash["customer_id"]=0
          @packing_job[0].update(packingHash)

          @shipping_manifest = ShippingManifest.where(shoppingOrder_id: @shopping_order.id)
          shippingman= Hash.new
          shippingman["shippingStatus"]="Packed ready to ship"
          @shipping_manifest[0].update(shippingman)
          @message3 = "Order ready for delivery"
          
          @drivers = User.where(is_driver: 1)
          @drivers.each do |driver|
          @notification = createDriverNotificationNewJob(@shopping_order.id, driver.id, @message3)
          end

        @shoppingOrder = ShoppingOrder.find(@shopping_order.id)
        @message= "Shopping Order packed"
        @notification = createAdminNotification(@shoppingOrder.id, @message)

        @user = User.find(@shopping_order.customer_id)
        @message2= "Your order is packed and will be shipped shortly"
        @notification2 = createCustomerNotificationNewJob(@shoppingOrder.id, @user.id, @message2)

        end
        format.html { redirect_to :back, notice: 'Shopping order was successfully updated.' }
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
      UserMailer.cancelled_order_email(current_user).deliver
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
