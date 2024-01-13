class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @time = Time.now
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome to Sample App!'
      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private
    
    def user_params
      params.require(:user).permit(
        :name, 
        :email, 
        :password, 
        :password_confirmation
      )
    end
end