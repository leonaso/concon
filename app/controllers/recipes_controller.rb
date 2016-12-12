class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:notice] = "La receta fue creada"
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
  
  end
  
  private
    def recipe_params
      params.require(:recipe).permit(:title, :description)
    end
  
  
end
