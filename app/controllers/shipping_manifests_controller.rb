class ShippingManifestsController < ApplicationController
  before_action :set_shipping_manifest, only: [:show, :edit, :update, :destroy]

  # GET /shipping_manifests
  # GET /shipping_manifests.json
  def index
    @shipping_manifests = ShippingManifest.all.sort {|a,b|  a.findDistanceForDelivery(a.id)<=>b.findDistanceForDelivery(b.id)  }
    
  end

  # GET /shipping_manifests/1
  # GET /shipping_manifests/1.json
  def show
  end

  # GET /shipping_manifests/new
  def new
    @shipping_manifest = ShippingManifest.new
  end

  # GET /shipping_manifests/1/edit
  def edit
  end

  # POST /shipping_manifests
  # POST /shipping_manifests.json
  def create
    @shipping_manifest = ShippingManifest.new(shipping_manifest_params)

    respond_to do |format|
      if @shipping_manifest.save
        format.html { redirect_to @shipping_manifest, notice: 'Shipping manifest was successfully created.' }
        format.json { render :show, status: :created, location: @shipping_manifest }
      else
        format.html { render :new }
        format.json { render json: @shipping_manifest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipping_manifests/1
  # PATCH/PUT /shipping_manifests/1.json
  def update
    respond_to do |format|
      if @shipping_manifest.update(shipping_manifest_params)
        format.html { redirect_to @shipping_manifest, notice: 'Shipping manifest was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipping_manifest }
      else
        format.html { render :edit }
        format.json { render json: @shipping_manifest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_manifests/1
  # DELETE /shipping_manifests/1.json
  def destroy
    @shipping_manifest.destroy
    respond_to do |format|
      format.html { redirect_to shipping_manifests_url, notice: 'Shipping manifest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_manifest
      @shipping_manifest = ShippingManifest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipping_manifest_params
      params.require(:shipping_manifest).permit(:dateOut, :shoppingOrder_id, :shippingStatus, :vanID)
    end

    
end
