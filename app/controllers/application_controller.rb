class ApplicationController < ActionController::Base
    include SessionsHelper
    
    private
    def require_user_logged_in
        unless logged_in?
            redirect_to root_url
        end
    end
    
    def admin_user
         @admin = Admin.find(params[:id])
    end
end
