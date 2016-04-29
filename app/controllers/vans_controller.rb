class VansController < ApplicationController
  before_action :set_van, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!
  before_action :must_be_admin_or_driver, only: [:edit, :update,:index,:show,:destroy,:new,:create]
  

  # GET /vans
  # GET /vans.json
  def index
    @vans = Van.all
  end

  # GET /vans/1
  # GET /vans/1.json
  def show
  end

  # GET /vans/new
  def new
    @van = Van.new
  end

  # GET /vans/1/edit
  def edit
  end

  # POST /vans
  # POST /vans.json
  def create
    @van = Van.new(van_params)

    respond_to do |format|
      if @van.save
        format.html { redirect_to @van, notice: 'Van was successfully created.' }
        format.json { render :show, status: :created, location: @van }
      else
        format.html { render :new }
        format.json { render json: @van.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vans/1
  # PATCH/PUT /vans/1.json
  def update
    respond_to do |format|
      if @van.regPlate == van_params["regPlate"]
        # first point
        @current_shipping_manifests = ShippingManifest.where(shippingstatus: "Packed ready to ship").where(vanID: nil).sort {|a,b|  a.findDistanceForDelivery(a.id)<=>b.findDistanceForDelivery(b.id)  }
        if @current_shipping_manifests[0] != nil
        shippingHash = Hash.new
        shippingHash["vanID"]=@van.id
        shippingHash["shippingStatus"]="Shipping"
        @current_shipping_manifests[0].update(shippingHash)
        @firstShoppingOrder = ShoppingOrder.find(@current_shipping_manifests[0].shoppingOrder_id)
        @first_location_user = User.find(@firstShoppingOrder.customer_id)
        # remaining 6 spots
        @following_shipping_manifests = ShippingManifest.where(shippingstatus: "Packed ready to ship").where(vanID: nil).sort {|a,b|  a.findDistanceForNextStop(@first_location_user.address,a.id)<=>b.findDistanceForNextStop(@first_location_user.address,b.id) }
        followingshippingHash = Hash.new
        followingshippingHash["vanID"]=@van.id
        followingshippingHash["shippingStatus"]="Shipping"
        if @following_shipping_manifests.length > 3
          @following_shipping_manifests[0].update(followingshippingHash)
          @following_shipping_manifests[1].update(followingshippingHash)
          @following_shipping_manifests[2].update(followingshippingHash)
        else
          @following_shipping_manifests.each do |shippingMan|
            shippingMan.update(followingshippingHash)
          end

        end
        @message="Van has been packed"
        @adminnoti=createAdminNotification(@van.id, @message)
        @drivernoti=createDriverNotificationNewJob(@van.id,@van.driverID, @message)
      end

      end
      if @van.update(van_params)
        
        
        format.html { redirect_to @van }
        format.json { render :show, status: :ok, location: @van }
      else
        format.html { render :edit }
        format.json { render json: @van.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vans/1
  # DELETE /vans/1.json
  def destroy
    @van.destroy
    respond_to do |format|
      format.html { redirect_to vans_url, notice: 'Van was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_van
      @van = Van.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def van_params
      params.require(:van).permit(:regPlate)
    end
end
