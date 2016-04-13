class LineitemsController < ApplicationController
  before_action :set_lineitem, only: [:show, :edit, :update, :destroy]

  # GET /lineitems
  # GET /lineitems.json
  def index
    @lineitems = Lineitem.all
  end

  # GET /lineitems/1
  # GET /lineitems/1.json
  def show
  end

  # GET /lineitems/new
  def new
    @lineitem = Lineitem.new
    
  end

  # GET /lineitems/1/edit
  def edit
  end

  # POST /lineitems
  # POST /lineitems.json
  def create
    @lineitem = Lineitem.new(lineitem_params)
    @cart = current_cart
    item = Item.find(lineitem_params[:item_id]) 
    @quantityremaining = item.quantity - @lineitem.quantity
    itemHash= Hash.new
    itemHash["quantity"]=@quantityremaining
    item.update(itemHash)
    @lineitem = @cart.addItem(item.id,@lineitem.quantity)
    respond_to do |format| 
      if @lineitem.save
      format.html { redirect_to :back, notice: 'Item added to basket.' }
      format.json { render action: 'show', status: :created, location: @lineitem } 
    else
      format.html { render action: 'new' }
      format.json { render json: @lineitem.errors, status: :unprocessable_entity } end
    end

  end

  # PATCH/PUT /lineitems/1
  # PATCH/PUT /lineitems/1.json
  def update
    respond_to do |format|
      if @lineitem.update(lineitem_params)
        format.html { redirect_to :back}
        format.json { render :show, status: :ok, location: @lineitem }
      else
        format.html { render :edit }
        format.json { render json: @lineitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lineitems/1
  # DELETE /lineitems/1.json
  def destroy
    item = Item.find(@lineitem.item_id) 
    @quantityremaining = item.quantity + @lineitem.quantity
    itemHash= Hash.new
    itemHash["quantity"]=@quantityremaining
    item.update(itemHash)
    @lineitem.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Lineitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lineitem
      @lineitem = Lineitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lineitem_params
      params.require(:lineitem).permit(:item_id, :shopping_order_id, :cart_id, :quantity,:packed)
    end
    

    def sortingMethod(lineitem)
    weightPoints = lineitem.item.weight
    fragilePoints = 0
    if lineitem.item.fragile
        fragilePoints=20
    end
    box = Box.find(lineitem.item.boxId) 
    boxPoints = box.points


   returningpoints=weightPoints -  fragilePoints + boxPoints

    end
    
end
