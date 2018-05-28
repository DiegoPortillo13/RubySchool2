class RegistrationsController < Devise::RegistrationsController
    private

    def sing_up_params
        params(:user).permit(:firts_name,:last_name,:date_of_birth,:email,:password,:password_confirmation)
    end
    
    def account_update_params
        params(:user).permit(:firts_name,:last_name,:date_of_birth,:email,:password,:password_confirmation,:curret_password)
    end
end