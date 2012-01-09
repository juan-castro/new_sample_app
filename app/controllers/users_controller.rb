class UsersController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update]

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @title = "Sign up"
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
      @title = "Sign up"
    end
  end

  def edit
    @user = User.find(params[:id])
    @title = "Edit user"
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      render 'edit'
      @title = "Edit user"
    end
  end

  private
    def authenticate
       deny_access unless signed_in?
    end

    def deny_access
      flash[:notice] = "Please sign in to access this page."
      redirect_to signin_path
    end
end




