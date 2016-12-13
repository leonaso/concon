class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all  
  end
  
  def new
    @recipe = Recipe.new
  end
  
  def edit
    @recipe = Recipe.find(params[:id])
  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:notice] = "The recipe was successfully treated"
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      flash[:notice] = "The recipe was successfully updated"
      redirect_to recipe_path(@recipe)
    else
      render 'edit'
    end
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end

  private
    def recipe_params
      params.require(:recipe).permit(:title, :description)
    end
  
  
end
