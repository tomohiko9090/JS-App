class ApplicationController < ActionController::Base
    include SessionsHelper

    def require_logged_in
        unless logged_in?
            flash[:danger] = "ログインしてくれい"
            redirect_to login_url
        end
    end

    def already_logged_in
        if logged_in?
            flash[:danger] = "もうログインしてるよ？"
            redirect_to root_path
        end
    end
end