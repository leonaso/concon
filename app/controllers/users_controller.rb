class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_same_user, only: [:edit, :update]
  before_action :require_admin, only: [:destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.paginate(page: params[:page], per_page: 5)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @user_recipes = @user.recipes.paginate(page: params[:page], per_page: 5)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:sucess] = "Welcome to Concon #{@user.username}"
      redirect_to user_path(@user)
      else
        render 'new'
      #respond_to do |format|
      #format.html { redirect_to @user, notice: 'Welcome to Concon.' }
      #format.json { render :show, status: :created, location: @user }
      #format.html { render :new }
      #format.json { render json: @user.errors, status: :unprocessable_entity }
      #end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    #respond_to do |format|
    @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:success] = "Your account was updated succesfully"
        redirect_to recipes_path
        #format.html { redirect_to @user, notice: 'Concon-user was successfully updated.' }
        #format.json { render :show, status: :ok, location: @user }
      else
        render 'edit'
        #format.html { render :edit }
        #format.json { render json: @user.errors, status: :unprocessable_entity }
      end
        #end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    flash[:danger] = "User and recipes were successfully deleted"
    redirect_to users_path
    #respond_to do |format|
     # format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      #format.json { head :no_content }
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
    
    def require_same_user
      if current_user != @user and !current_user.admin?
        flash[:danger] = "You can only edit you own account"
        redirect_to root_path
      end
    end
    
    def require_admin
      if logged_in? and !current_user.admin?
        flash[:danger] = "Only admin can performe this action"
        redirect_to root_path
      end
    end
    
end


