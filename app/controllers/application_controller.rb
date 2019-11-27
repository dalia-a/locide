<<<<<<< HEAD
class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [ :first_name, :last_name, :phone, :country, :city, :role, :about_me, :why_me])
    end 
end
=======
class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [ :first_name, :last_name, :phone, :country, :city, :role, :about_me, :why_me])
        devise_parameter_sanitizer.permit(:account_update, keys: [ :first_name, :last_name, :phone, :country, :city, :role, :about_me, :why_me])
    end 
end
>>>>>>> 09bafbffa99c0edad15e49a6483055684e28e4f9
