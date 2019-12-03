class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
 #before_action :authenticate_user!

    def favorite_text
        return @favorite_exists ? "UnFavorite" : "Favorite"
    end

    helper_method :favorite_text
end
