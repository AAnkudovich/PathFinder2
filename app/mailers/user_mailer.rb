class UserMailer < ActionMailer::Base
	default :from => "noreply@warehouseshop.ie"

	def welcome_email(user)
		@user=user
		 mail(:to => "#{user.name} <#{user.email}>", :subject => "Welcome To WareHouse shop")

	end
	def created_order_email(user)
		@user=user
		 mail(:to => "#{user.name} <#{user.email}>", :subject => "Created new order")

	end
	def cancelled_order_email(user)
		@user=user
		 mail(:to => "#{user.name} <#{user.email}>", :subject => "Cancelled order")

	end
end