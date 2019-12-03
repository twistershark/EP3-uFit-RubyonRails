class FavoritesController < ApplicationController
  def update
    favorite = Favorite.where(exercise: Exercise.find(params[:exercise]), user: current_user)
    if favorite == []
      Favorite.create(exercise: Exercise.find(params[:exercise]), user: current_user)
      @favorite_exists = true
    else
      favorite.destroy_all
      @favorite_exists = false
    end
  respond_to do |format|
    format.html {}
    format.js {}
    end
  end
end
