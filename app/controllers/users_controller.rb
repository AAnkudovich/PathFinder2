class UsersController < ApplicationController
	def show
	@user = User.find(params[:id])
	@currentUsersOrders = ShoppingOrder.where(customer_id: @user.id).to_a
	@currentPackingJobs = PackingJob.where(customer_id: @user.id).order("created_at DESC")
	end
	def index 
		@users = User.all 
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
	  @user = User.find(params[:id])
	  respond_to do |format|
	    if @user.update_without_password(user_params)
	      format.html { redirect_to root_url}
	      format.json { head :no_content }
	    else
	      format.html { render action: "edit" }
	      format.json { render json: @user.errors, status: :unprocessable_entity }
	    end
	   end
	end  

	def user_params
      params.require(:user).permit(:name, :email, :is_female, :is_admin, :is_packer, :date_of_birth)
    end
end
