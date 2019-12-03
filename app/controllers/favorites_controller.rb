class FavoritesController < ApplicationController
  def update
  	Favorite = Favorite.where(exercicio: Exercicio.find(params[:exercicio]), user: current_user)
  	if Favorite == []
  		Favorite.create(exercicio: Exercicio.find(params[:exercicio]), user: current_user)
  		@favorite_exists = true
  	else
  		favorite.destroy_all
  		@favorite_exists = false
  	end
  	respond_to do |format|
  		format.html()
  		format.js()
  	end
  end
end
