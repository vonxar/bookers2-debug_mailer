class User::RegistrationController < Devise::RegistrationsController

def new
    super
end

def create
 super do
  if @user.save
  ThanksMailer.send_confirm_to_user(@user).deliver_now
 end
end
end

def destroy
    super
end
  
end
 