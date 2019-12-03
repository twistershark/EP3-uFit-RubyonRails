class ExercisesController < ApplicationController


  def index

  end

  def new
  end

  def create
    @exercise = Exercise.new(exercise_params)
 
    @exercise.save
    redirect_to @exercise
  end

  def show
    @exercise = Exercise.find(params[:id])
    @favorite_exists = Favorite.where(exercise: @exercise, user: current_user) == [] ? false : true
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :url, :category)
  end

end
