class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_filter :configure_permitted_parameters, if: :devise_controller?

    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :date_of_birth, :address) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :is_female, :is_admin, :is_packer, :date_of_birth, :address) }
        end
    
    private
       def current_cart
        @cart = Cart.find(session[:cart_id]) 
        rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id 
        @cart
    end
    def createAPackingJob(shopping_order_id)
        packingHash= Hash.new
        packingHash["shoppingOrder_id"]=shopping_order_id
        
        @packers = User.where(is_packer: true).to_a

        @packing_jobs = PackingJob.all
        @busyPackers=[]
        @packing_jobs.each do |packing_job|
        if packing_job.customer_id == 0
            
        elsif packing_job.customer_id!=nil 
             user = User.find(packing_job.customer_id)
             @busyPackers << user
            end
         end 
         @availablePackers = @busyPackers
         while @availablePackers.count>@packers.count
            @availablePackers = @availablePackers.group_by {|n| n}.each {|k,v| v.pop @packers.count(k)}.values.flatten
          end
        @availablePackers2=@packers-@availablePackers
        if @availablePackers2[0]!=nil 
            packingHash["customer_id"]=@availablePackers2[0].id
          else
            @availablePackers2=@availablePackers2+@packers
            packingHash["customer_id"]=@availablePackers2[0].id

        end
    
        @packing_job = PackingJob.create(packingHash)
        @packing_job

    end
    def createAshippingManifest(shopping_order_id)
        shippingHash= Hash.new
        shippingHash["shoppingOrder_id"]=shopping_order_id
        shippingHash["dateOut"]=Date.current+1
        shippingHash["shippingStatus"]="Waiting to be packed"
        @shipping_manifest = ShippingManifest.create(shippingHash)
        @shipping_manifest
    end
    def must_be_admin
      unless current_user && current_user.is_admin?
        redirect_to root_path, notice: "Only admins can go there"
      end
    end
    def must_be_admin_or_packer
      unless current_user && current_user.is_packer?
        redirect_to root_path, notice: "Only admins and packers can go there"
      end
    end
    # def must_be_admin_or_driver
    #   unless current_user && current_user.is_driver?
    #     redirect_to root_path, notice: "Only admins and packers can go there"
    #   end
    # end
end