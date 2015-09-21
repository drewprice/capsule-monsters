class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
    end
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def search
    @users = User.search(params[:query])
    render 'search_results'
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
