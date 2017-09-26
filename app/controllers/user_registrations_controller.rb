class UserRegistrationsController < Devise::RegistrationsController
  def create
    super
    if @user.persisted?
      UserMailer.Welcome(@user).deliver_now
    end
  end
end