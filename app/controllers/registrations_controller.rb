class RegistrationsController < Devise::RegistrationsController

  def create
    super
    UserMailer.welcome_email(@user).deliver unless @user.invalid?
  end
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

end