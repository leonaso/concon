class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :update, :show, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user, only: [:edit, :update, :destroy]
  
  def index
    @recipes = Recipe.paginate(page: params[:page], per_page: 5)
  end
  
  def new
    @recipe = Recipe.new
  end
  
  def edit

  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      flash[:success] = "The recipe was successfully created"
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end
  
  def update
    if @recipe.update(recipe_params)
      flash[:success] = "The recipe was successfully updated"
      redirect_to recipe_path(@recipe)
    else
      render 'edit'
    end
  end
  
  def show

  end
  
  def destroy
    @recipe.destroy
    flash[:danger] = "Recipe successfully deleted"
    redirect_to recipes_path
  end

  private
    
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
      
    def recipe_params
      params.require(:recipe).permit(:title, :description)
    end
    
    def require_same_user
      if current_user != @recipe.user
        flash[:danger] = "You can only edit your own recipes"
        redirect_to root_path
      end  
    end
  
  
end
