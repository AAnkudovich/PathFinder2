class ShoppingOrderCommentsController < ApplicationController
  before_action :set_shopping_order_comment, only: [:show, :edit, :update, :destroy]
  

  # GET /shopping_order_comments
  # GET /shopping_order_comments.json
  def index
    @shopping_order_comments = ShoppingOrderComment.all
  end

  # GET /shopping_order_comments/1
  # GET /shopping_order_comments/1.json
  def show
  end

  # GET /shopping_order_comments/new
  def new
    @shopping_order_comment = ShoppingOrderComment.new
  end

  # GET /shopping_order_comments/1/edit
  def edit
  end

  # POST /shopping_order_comments
  # POST /shopping_order_comments.json
  def create
    @shopping_order_comment = ShoppingOrderComment.new(shopping_order_comment_params)

    respond_to do |format|
      if @shopping_order_comment.save
        format.html { redirect_to @shopping_order_comment, notice: 'Shopping order comment was successfully created.' }
        format.json { render :show, status: :created, location: @shopping_order_comment }
      else
        format.html { render :new }
        format.json { render json: @shopping_order_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopping_order_comments/1
  # PATCH/PUT /shopping_order_comments/1.json
  def update
    respond_to do |format|
      if @shopping_order_comment.update(shopping_order_comment_params)
        format.html { redirect_to @shopping_order_comment, notice: 'Shopping order comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopping_order_comment }
      else
        format.html { render :edit }
        format.json { render json: @shopping_order_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_order_comments/1
  # DELETE /shopping_order_comments/1.json
  def destroy
    @shopping_order_comment.destroy
    respond_to do |format|
      format.html { redirect_to shopping_order_comments_url, notice: 'Shopping order comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_order_comment
      @shopping_order_comment = ShoppingOrderComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_order_comment_params
      params.require(:shopping_order_comment).permit(:userID, :packingRating, :shoppingOrderID, :deliveryRating, :message)
    end
end
